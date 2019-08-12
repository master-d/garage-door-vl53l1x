
/* 
* This file is part of VL53L1 Platform 
* 
* Copyright (c) 2016, STMicroelectronics - All Rights Reserved 
* 
* License terms: BSD 3-clause "New" or "Revised" License. 
* 
* Redistribution and use in source and binary forms, with or without 
* modification, are permitted provided that the following conditions are met: 
* 
* 1. Redistributions of source code must retain the above copyright notice, this 
* list of conditions and the following disclaimer. 
* 
* 2. Redistributions in binary form must reproduce the above copyright notice, 
* this list of conditions and the following disclaimer in the documentation 
* and/or other materials provided with the distribution. 
* 
* 3. Neither the name of the copyright holder nor the names of its contributors 
* may be used to endorse or promote products derived from this software 
* without specific prior written permission. 
* 
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE 
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
* 
*/
#define _XTAL_FREQ 4000000

#include <xc.h>
#include <pic12f1840.h>
#include "vl53l1_platform.h"
void i2c_ack() {
    ACKDT = 1;
    ACKEN = 1;
}
void i2c_nack() {
    ACKDT = 0;
    ACKEN = 1;    
}

void i2c_wait() {
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    //while(!SSP1IF);
    //SSP1IF = 0;
}
void i2c_start() {
    SEN = 1;
    i2c_wait();
}
void i2c_stop() {
    PEN = 1;
    i2c_wait();
}

__bit i2c_read_dev(uint16_t dev) {
    i2c_wait();
   SSP1BUF = ((dev << 1) & 0xff | 0x1);
   i2c_wait();
   return ACKSTAT;
}

__bit i2c_write_dev(uint16_t dev) {
    i2c_wait();
   SSP1BUF = ((dev << 1) & 0xff);
   i2c_wait();
   return ACKSTAT;
}
__bit i2c_write(uint8_t data) {
   i2c_wait();
   SSP1BUF = data;
   i2c_wait();
   return ACKSTAT;
}
__bit i2c_write16(uint16_t data) {
    i2c_write((data >> 8) & 0xFF);
    i2c_write(data & 0xFF);
    return 0;
}
__bit i2c_write32(uint32_t data) {
    i2c_write((data >> 24) & 0xff);
    i2c_write((data >> 16) & 0xff);
    i2c_write((data >> 8) & 0xff);
    i2c_write(data & 0xff);
    return 0;
}

uint8_t i2c_read(uint8_t ack) {
    i2c_wait();
    RCEN =1;
    i2c_wait();
    uint8_t temp = SSPBUF;
    i2c_wait();
    ACKDT = !ack;
    ACKEN = 1;
//    while (ACKEN);
    return temp;
}
uint16_t i2c_read16() {
    uint16_t data = 0;
    data |= (uint16_t)i2c_read(1) << 8;
    data |= i2c_read(0);
    return data;
}
uint32_t i2c_read32() {
    uint32_t data = 0;
    data |= (uint32_t)i2c_read(1) << 24;
    data |= (uint32_t)i2c_read(1) << 16;
    data |= (uint32_t)i2c_read(1) << 8;
    data |= i2c_read(0);
    return data;
}

int8_t VL53L1_WriteMulti( uint16_t dev, uint16_t index, uint8_t *pdata, uint32_t count) {
    i2c_start();
    i2c_write_dev(dev);
    i2c_write16(index);
    
    while (count-- > 0) {
        i2c_write(*pdata++);
    }    

    i2c_stop();
    return 0;
}

int8_t VL53L1_ReadMulti(uint16_t dev, uint16_t index, uint8_t *pdata, uint32_t count){
    i2c_start();
    i2c_write_dev(dev);
    i2c_write16(index);
    i2c_stop();
    i2c_start();
    i2c_read_dev(dev);
    
    while (count-- > 0) {
        *pdata++ = i2c_read(1);
    }    
        ACKDT = 0;
        ACKEN = 1;

    i2c_stop();
    return 0;
}

int8_t VL53L1_WrByte(uint16_t dev, uint16_t index, uint8_t data) {
    i2c_start();
    i2c_write_dev(dev);
    i2c_write16(index);
    i2c_write(data);
    
    i2c_stop();
    return 0;
}

int8_t VL53L1_WrWord(uint16_t dev, uint16_t index, uint16_t data) {
    i2c_start();
    i2c_write_dev(dev);
    i2c_write16(index);
    i2c_write16(data);

    i2c_stop();
    return 0;
}

int8_t VL53L1_WrDWord(uint16_t dev, uint16_t index, uint32_t data) {
    i2c_start();
    i2c_write_dev(dev);
    i2c_write16(index);
    i2c_write32(data);

    i2c_stop();
    return 0;
}

int8_t VL53L1_RdByte(uint16_t dev, uint16_t index, uint8_t *data) {
    i2c_start();
    i2c_write_dev(dev);
    i2c_write16(index);
    i2c_stop();
    i2c_start();
    i2c_read_dev(dev);
    *data = i2c_read(0);
    ACKDT = 1;
    ACKEN = 1;

    i2c_stop();
    return 0;
}

int8_t VL53L1_RdWord(uint16_t dev, uint16_t index, uint16_t *data) {
    i2c_start();
    i2c_write_dev(dev);
    i2c_write16(index);
    i2c_stop();
    i2c_start();
    i2c_read_dev(dev);
    
    *data = i2c_read16();

    i2c_stop();
    return 0;
}

int8_t VL53L1_RdDWord(uint16_t dev, uint16_t index, uint32_t *data) {
    i2c_start();
    i2c_write_dev(dev);
    i2c_write16(index);
    i2c_stop();
    i2c_start();
    i2c_read_dev(dev);
    *data = i2c_read32();

    i2c_stop();
    return 0;
}

int8_t VL53L1_WaitMs(uint16_t dev, int32_t wait_ms){
    
    return 0;
}
