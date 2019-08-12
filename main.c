

// PIC12F1840 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1
#pragma config FOSC = INTOSC    // Oscillator Selection (INTOSC oscillator: I/O function on CLKIN pin)
#pragma config WDTE = ON        // Watchdog Timer Enable (WDT enabled)
#pragma config PWRTE = ON       // Power-up Timer Enable (PWRT disabled)
#pragma config MCLRE = ON       // MCLR Pin Function Select (MCLR/VPP pin function is MCLR)
#pragma config CP = OFF         // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config CPD = OFF        // Data Memory Code Protection (Data memory code protection is disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable (Brown-out Reset enabled)
#pragma config CLKOUTEN = OFF   // Clock Out Enable (CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin)
#pragma config IESO = ON        // Internal/External Switchover (Internal/External Switchover mode is enabled)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor is enabled)

// CONFIG2
#pragma config WRT = OFF        // Flash Memory Self-Write Protection (Write protection off)
#pragma config PLLEN = OFF      // PLL Enable (4x PLL disabled)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable (Stack Overflow or Underflow will cause a Reset)
#pragma config BORV = LO        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (Vbor), low trip point selected.)
#pragma config LVP = ON         // Low-Voltage Programming Enable (Low-voltage programming enabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#define _XTAL_FREQ 4000000
#define LED0 LATA4
#define XSHUT LATA5
#define SCK  TRISA1
#define SDA  TRISA2
#define I2C_SPEED 100

#include <xc.h>
#include <stdio.h>
#include "VL53L1X_api.h"

char rx_data;

void setup_i2c() {
    // set I2C clock and data as inputs
    SCK = 1;
    SDA = 1;
    // set I2C speed to 100 kbps;
    //FOSC/(SSPADD+1)*4
    SSPADD = ((_XTAL_FREQ/4000)/I2C_SPEED)-1;
    SSPSTAT = 0x80; // slew rate control disabled
    SSPCON = 0x28;  // enable i2c and set to master mode
//    SSPCONbits.CKP =1;
}
void get_sensor_id() {
    uint16_t id = 0;
    VL53L1X_ERROR err = VL53L1X_GetSensorId(VL53L1_I2C_SLAVE__DEVICE_ADDRESS, &id);
    VL53L1_WrWord(0x16,err,id);
}
void setup_sensor() {
     /* Wait for device booted */
    int8_t status = 1;
    uint8_t state =1;
    
    __delay_ms(100);
    
    while(status){
       status = VL53L1X_BootState(VL53L1_I2C_SLAVE__DEVICE_ADDRESS, &state);
       __delay_ms(10);
       VL53L1_WrByte(0x14,status,state);
    }
     
    __delay_ms(100);
    /* Sensor Initialization */
    VL53L1X_SensorInit(VL53L1_I2C_SLAVE__DEVICE_ADDRESS);
    /* Modify the default configuration */
    VL53L1X_SetInterMeasurementInMs(VL53L1_I2C_SLAVE__DEVICE_ADDRESS, 100);
    //status = VL53L1X_SetOffset(dev, 1);
}
void setup_uart() {
    // disable ADC on C3
    ANSELA = 0;
    
    // setup UART
    TRISAbits.TRISA4 = 0; // TX as output
   // RCAPPSbits.RC4PPS = 0b10100;
    TRISAbits.TRISA5 = 1; // RX as inputB
    APFCON = 0b10000100;
    TXSTAbits.SYNC = 0; // Async operation
    TXSTAbits.TX9 = 0; // No tx of 9th bit
    TXSTAbits.TXEN = 1; // Enable tx
    RCSTAbits.RX9 = 0; // No rx of 9th bit
    RCSTAbits.CREN = 1; // Enable continuous rx
    RCSTAbits.SPEN = 1; // Enable serial port
    // Setting for 9600 BPS
    BAUDCONbits.BRG16 = 0; // Divisor multiplier 
    TXSTAbits.BRGH = 1; // high-speed baudrate
    // if BRG16 and BRGH are set ->     FOSC/(4*(SPBRG1+1))
    // if BRG16 or BRGH is set ->       FOSC/(16*(SPBRG1+1))
    // if BRG16 and BRGH are not set -> FOSC/(64*(SPBRG1+1))
    SPBRG = 25; // divisor value for 10417 baud
}
void setup_interrupts() {
    // USART Interrupts
    PIE1bits.TXIE = 0;  // disable USART tx interrupt
    PIE1bits.RCIE = 1;  // enable USART rx interrupt
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;
}

void uart_putc(char c) {
    // wait the end of transmission
 while(!TXSTAbits.TRMT);
 TXREG = c; // send the new byte
}
void uart_write(char* str) {
    while (*str) {
        uart_putc(*str++);
    }
}
void uart_writeln(char* str) {
    uart_write(str);
    uart_write("\r\n");
}

char read_char(void)
{
    uart_writeln("waiting for RCIF...");
    if (!PIR1bits.RCIF) { // wait for char
        // handle errors if any
        if(RCSTAbits.FERR){
            SPEN = 0;
            SPEN = 1;

        }
        if(RCSTAbits.OERR){
            CREN = 0;
            CREN = 1;
        }
        uart_write("read char:");
        uart_putc(RCREG);
        uart_writeln("");
    }
    return RCREG;
}
// * Interrupt service routine
/*
void __interrupt () ISR(void) {
//    uart_writeln("in ISR");
    // USART receive interrupt
    if(PIR1bits.RCIF) {
        uart_writeln("RX:");
        uart_putc(RCREG);
        uart_putc(RCSTA);
        rx_data = RCREG;
        // handle received character here
        if(rx_data == 'f') {
            LED0 = !LED0;
        }
        // handle errors if any
        if(RCSTAbits.FERR | RCSTAbits.OERR) {
            LED0 = !LED0;
            CREN = 0;
            CREN = 1;
        }
        /*
        if(RCSTAbits.FERR){
            SPEN = 0;
            SPEN = 1;
        }
        if(RCSTAbits.OERR){
            CREN = 0;
            CREN = 1;
        }
         
    }
}
*/
void i2cwait() {
    while(!SSP1IF);
    SSP1IF = 0;
}
void i2c_test() {
    SEN = 1;
    i2cwait();
    SSP1BUF = ((0x0052 << 1) & 0xff | 0x1);
    i2cwait();
    SSP1BUF = 0x01;
    i2cwait();
    SSP1BUF = 0x02;
    i2cwait();
    PEN =1;
    i2cwait();
}
uint16_t i2c_range(uint8_t *status) {
    uint8_t dataReady = 0;
//    int8_t tries = 10;
    uint16_t distance;

    char* buf[32];

    *status = VL53L1X_StartRanging(VL53L1_I2C_SLAVE__DEVICE_ADDRESS);
    /* ranging loop */
    while(dataReady==0){
        *status = VL53L1X_CheckForDataReady(VL53L1_I2C_SLAVE__DEVICE_ADDRESS, &dataReady);
        VL53L1_WrByte(0x15,*status,dataReady);
//        tries--;
    }
    VL53L1X_GetRangeStatus(VL53L1_I2C_SLAVE__DEVICE_ADDRESS, status);
    if (*status == 4)
        return 0;
    VL53L1X_GetDistance(VL53L1_I2C_SLAVE__DEVICE_ADDRESS, &distance);
    VL53L1X_ClearInterrupt(VL53L1_I2C_SLAVE__DEVICE_ADDRESS);

    
    VL53L1_WrWord(0x16,*status ,distance);
    return distance;
   
//    sprintf(buf,"%d %d",status, distance);        // may be worth adding a CR or CR/LF
//    uart_writeln(buf);
    
}
void main(void)
{
    //4Mhz internal oscillator
    OSCCONbits.IRCF = 0b1101;
    //setup WDT (roughly 2s)
    WDTCONbits.WDTPS = 0b01101;
    WDTCONbits.SWDTEN =1;
    // set A2 as output for LED0
    TRISAbits.TRISA4 = 0;
    TRISAbits.TRISA5 = 0;
    
    XSHUT = 0;
    __delay_ms(5);
    XSHUT = 1;
    __delay_ms(10);
    
    // enable global and peripheral interrupts
    //setup_interrupts();
    //setup_uart();
    setup_i2c();
    // setup vl53l0x
    setup_sensor();
    
    uint8_t status = 0;
    uint16_t distance = i2c_range(&status);
    if (distance == 0 || distance > 4000) {
        uint8_t x = 0;
        for (x; x < 6; x++) {
            LED0 = !LED0;
            __delay_ms(100);
        }
    } else {
        uint16_t x = 1000;
        for (x; x < distance; x+=1000) {
            LED0 = 1;
            __delay_ms(250);
            LED0 = 0;
            __delay_ms(250);
        }
    }
    // hold reset line of VL53L1X low while sleeping
    XSHUT = 0;
    LED0 = 0;
    SLEEP();
    //i2c_test();
    //get_sensor_id();
}

