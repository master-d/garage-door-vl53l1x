# 1 "vl53l1_ULD/core/VL53L1X_api.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/xc8/v2.05/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "vl53l1_ULD/core/VL53L1X_api.c" 2
# 65 "vl53l1_ULD/core/VL53L1X_api.c"
# 1 "vl53l1_ULD/core/VL53L1X_api.h" 1
# 71 "vl53l1_ULD/core/VL53L1X_api.h"
# 1 "vl53l1_ULD/platform/vl53l1_platform.h" 1








# 1 "vl53l1_ULD/platform/vl53l1_types.h" 1
# 46 "vl53l1_ULD/platform/vl53l1_types.h"
# 1 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 1 3
# 13 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;







typedef signed long long int int64_t;







typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;






typedef unsigned long long int uint64_t;
# 88 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef __int24 int_least24_t;
# 118 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef signed long int int_least32_t;
# 127 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef signed long long int int_least64_t;
# 136 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;







typedef unsigned long long int uint_least64_t;
# 181 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;







typedef signed long long int int_fast64_t;







typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;






typedef unsigned long long int uint_fast64_t;
# 263 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef int64_t intmax_t;
# 278 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef uint64_t uintmax_t;
# 289 "/opt/microchip/xc8/v2.05/pic/include/c90/stdint.h" 3
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 46 "vl53l1_ULD/platform/vl53l1_types.h" 2

# 1 "/opt/microchip/xc8/v2.05/pic/include/c90/stddef.h" 1 3



# 1 "/opt/microchip/xc8/v2.05/pic/include/__size_t.h" 1 3



typedef unsigned size_t;
# 5 "/opt/microchip/xc8/v2.05/pic/include/c90/stddef.h" 2 3
# 1 "/opt/microchip/xc8/v2.05/pic/include/__null.h" 1 3
# 6 "/opt/microchip/xc8/v2.05/pic/include/c90/stddef.h" 2 3
typedef int ptrdiff_t;
# 47 "vl53l1_ULD/platform/vl53l1_types.h" 2

# 1 "/opt/microchip/xc8/v2.05/pic/include/c90/string.h" 1 3
# 14 "/opt/microchip/xc8/v2.05/pic/include/c90/string.h" 3
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);




extern void * __builtin_memcpy(void *, const void *, size_t);
#pragma intrinsic(__builtin_memcpy)
# 36 "/opt/microchip/xc8/v2.05/pic/include/c90/string.h" 3
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);
# 48 "vl53l1_ULD/platform/vl53l1_types.h" 2

# 1 "/opt/microchip/xc8/v2.05/pic/include/c90/stdio.h" 1 3
# 11 "/opt/microchip/xc8/v2.05/pic/include/c90/stdio.h" 3
# 1 "/opt/microchip/xc8/v2.05/pic/include/c90/stdarg.h" 1 3






typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);
# 12 "/opt/microchip/xc8/v2.05/pic/include/c90/stdio.h" 2 3
# 43 "/opt/microchip/xc8/v2.05/pic/include/c90/stdio.h" 3
struct __prbuf
{
 char * ptr;
 void (* func)(char);
};
# 85 "/opt/microchip/xc8/v2.05/pic/include/c90/stdio.h" 3
# 1 "/opt/microchip/xc8/v2.05/pic/include/c90/conio.h" 1 3







# 1 "/opt/microchip/xc8/v2.05/pic/include/c90/errno.h" 1 3
# 29 "/opt/microchip/xc8/v2.05/pic/include/c90/errno.h" 3
extern int errno;
# 9 "/opt/microchip/xc8/v2.05/pic/include/c90/conio.h" 2 3



extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);



extern char * cgets(char *);
extern void cputs(const char *);
# 86 "/opt/microchip/xc8/v2.05/pic/include/c90/stdio.h" 2 3


extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);
# 180 "/opt/microchip/xc8/v2.05/pic/include/c90/stdio.h" 3
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);
# 49 "vl53l1_ULD/platform/vl53l1_types.h" 2

# 1 "/opt/microchip/xc8/v2.05/pic/include/c90/stdlib.h" 1 3






typedef unsigned short wchar_t;







typedef struct {
 int rem;
 int quot;
} div_t;
typedef struct {
 unsigned rem;
 unsigned quot;
} udiv_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 unsigned long quot;
 unsigned long rem;
} uldiv_t;

typedef struct {
 long long quot;
 long long rem;
} lldiv_t;
# 65 "/opt/microchip/xc8/v2.05/pic/include/c90/stdlib.h" 3
extern double atof(const char *);
extern double strtod(const char *, const char **);
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);

extern long long atoll(const char *);

extern long strtol(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);

extern lldiv_t lldiv(long long int numer, long long int denom);

extern unsigned long _lrotl(unsigned long value, unsigned int shift);
extern unsigned long _lrotr(unsigned long value, unsigned int shift);
extern unsigned int _rotl(unsigned int value, unsigned int shift);
extern unsigned int _rotr(unsigned int value, unsigned int shift);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);




# 1 "/opt/microchip/xc8/v2.05/pic/include/c90/xc8debug.h" 1 3
# 13 "/opt/microchip/xc8/v2.05/pic/include/c90/xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 100 "/opt/microchip/xc8/v2.05/pic/include/c90/stdlib.h" 2 3




extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int system(char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);




extern char * ltoa(char * buf, long val, int base);
extern char * ultoa(char * buf, unsigned long val, int base);

extern char * ftoa(float f, int * status);
# 50 "vl53l1_ULD/platform/vl53l1_types.h" 2
# 59 "vl53l1_ULD/platform/vl53l1_types.h"
#pragma message("Please review  type definition of STDINT define for your platform and add to list above ")
# 72 "vl53l1_ULD/platform/vl53l1_types.h"
typedef unsigned long long uint64_t;
# 98 "vl53l1_ULD/platform/vl53l1_types.h"
typedef unsigned char uint8_t;




typedef signed char int8_t;
# 112 "vl53l1_ULD/platform/vl53l1_types.h"
typedef uint32_t FixPoint1616_t;
# 9 "vl53l1_ULD/platform/vl53l1_platform.h" 2







typedef struct {
 uint32_t dummy;
} VL53L1_Dev_t;

typedef VL53L1_Dev_t *VL53L1_DEV;




int8_t VL53L1_WriteMulti(
  uint16_t dev,
  uint16_t index,
  uint8_t *pdata,
  uint32_t count);



int8_t VL53L1_ReadMulti(
  uint16_t dev,
  uint16_t index,
  uint8_t *pdata,
  uint32_t count);



int8_t VL53L1_WrByte(
  uint16_t dev,
  uint16_t index,
  uint8_t data);



int8_t VL53L1_WrWord(
  uint16_t dev,
  uint16_t index,
  uint16_t data);



int8_t VL53L1_WrDWord(
  uint16_t dev,
  uint16_t index,
  uint32_t data);



int8_t VL53L1_RdByte(
  uint16_t dev,
  uint16_t index,
  uint8_t *pdata);



int8_t VL53L1_RdWord(
  uint16_t dev,
  uint16_t index,
  uint16_t *pdata);



int8_t VL53L1_RdDWord(
  uint16_t dev,
  uint16_t index,
  uint32_t *pdata);



int8_t VL53L1_WaitMs(
  uint16_t dev,
  int32_t wait_ms);
# 72 "vl53l1_ULD/core/VL53L1X_api.h" 2






typedef int8_t VL53L1X_ERROR;
# 129 "vl53l1_ULD/core/VL53L1X_api.h"
typedef struct {
 uint8_t major;
 uint8_t minor;
 uint8_t build;
 uint32_t revision;
} VL53L1X_Version_t;




typedef struct {
 uint8_t Status;
 uint16_t Distance;
 uint16_t Ambient;
 uint16_t SigPerSPAD;
 uint16_t NumSPADs;
} VL53L1X_Result_t;




VL53L1X_ERROR VL53L1X_GetSWVersion(VL53L1X_Version_t *pVersion);




VL53L1X_ERROR VL53L1X_SetI2CAddress(uint16_t, uint8_t new_address);






VL53L1X_ERROR VL53L1X_SensorInit(uint16_t dev);





VL53L1X_ERROR VL53L1X_ClearInterrupt(uint16_t dev);





VL53L1X_ERROR VL53L1X_SetInterruptPolarity(uint16_t dev, uint8_t IntPol);





VL53L1X_ERROR VL53L1X_GetInterruptPolarity(uint16_t dev, uint8_t *pIntPol);






VL53L1X_ERROR VL53L1X_StartRanging(uint16_t dev);




VL53L1X_ERROR VL53L1X_StopRanging(uint16_t dev);





VL53L1X_ERROR VL53L1X_CheckForDataReady(uint16_t dev, uint8_t *isDataReady);





VL53L1X_ERROR VL53L1X_SetTimingBudgetInMs(uint16_t dev, uint16_t TimingBudgetInMs);




VL53L1X_ERROR VL53L1X_GetTimingBudgetInMs(uint16_t dev, uint16_t *pTimingBudgetInMs);






VL53L1X_ERROR VL53L1X_SetDistanceMode(uint16_t dev, uint16_t DistanceMode);




VL53L1X_ERROR VL53L1X_GetDistanceMode(uint16_t dev, uint16_t *pDistanceMode);






VL53L1X_ERROR VL53L1X_SetInterMeasurementInMs(uint16_t dev,
      uint32_t InterMeasurementInMs);




VL53L1X_ERROR VL53L1X_GetInterMeasurementInMs(uint16_t dev, uint16_t * pIM);




VL53L1X_ERROR VL53L1X_BootState(uint16_t dev, uint8_t *state);




VL53L1X_ERROR VL53L1X_GetSensorId(uint16_t dev, uint16_t *id);




VL53L1X_ERROR VL53L1X_GetDistance(uint16_t dev, uint16_t *distance);





VL53L1X_ERROR VL53L1X_GetSignalPerSpad(uint16_t dev, uint16_t *signalPerSp);




VL53L1X_ERROR VL53L1X_GetAmbientPerSpad(uint16_t dev, uint16_t *amb);




VL53L1X_ERROR VL53L1X_GetSignalRate(uint16_t dev, uint16_t *signalRate);




VL53L1X_ERROR VL53L1X_GetSpadNb(uint16_t dev, uint16_t *spNb);




VL53L1X_ERROR VL53L1X_GetAmbientRate(uint16_t dev, uint16_t *ambRate);





VL53L1X_ERROR VL53L1X_GetRangeStatus(uint16_t dev, uint8_t *rangeStatus);




VL53L1X_ERROR VL53L1X_GetResult(uint16_t dev, VL53L1X_Result_t *pResult);





VL53L1X_ERROR VL53L1X_SetOffset(uint16_t dev, int16_t OffsetValue);




VL53L1X_ERROR VL53L1X_GetOffset(uint16_t dev, int16_t *Offset);





VL53L1X_ERROR VL53L1X_SetXtalk(uint16_t dev, uint16_t XtalkValue);




VL53L1X_ERROR VL53L1X_GetXtalk(uint16_t dev, uint16_t *Xtalk);
# 323 "vl53l1_ULD/core/VL53L1X_api.h"
VL53L1X_ERROR VL53L1X_SetDistanceThreshold(uint16_t dev, uint16_t ThreshLow,
         uint16_t ThreshHigh, uint8_t Window,
         uint8_t IntOnNoTarget);




VL53L1X_ERROR VL53L1X_GetDistanceThresholdWindow(uint16_t dev, uint16_t *window);




VL53L1X_ERROR VL53L1X_GetDistanceThresholdLow(uint16_t dev, uint16_t *low);




VL53L1X_ERROR VL53L1X_GetDistanceThresholdHigh(uint16_t dev, uint16_t *high);







VL53L1X_ERROR VL53L1X_SetROI(uint16_t dev, uint16_t X, uint16_t Y);




VL53L1X_ERROR VL53L1X_GetROI_XY(uint16_t dev, uint16_t *ROI_X, uint16_t *ROI_Y);





VL53L1X_ERROR VL53L1X_SetROICenter(uint16_t dev, uint8_t ROICenter);




VL53L1X_ERROR VL53L1X_GetROICenter(uint16_t dev, uint8_t *ROICenter);




VL53L1X_ERROR VL53L1X_SetSignalThreshold(uint16_t dev, uint16_t signal);




VL53L1X_ERROR VL53L1X_GetSignalThreshold(uint16_t dev, uint16_t *signal);




VL53L1X_ERROR VL53L1X_SetSigmaThreshold(uint16_t dev, uint16_t sigma);




VL53L1X_ERROR VL53L1X_GetSigmaThreshold(uint16_t dev, uint16_t *signal);






VL53L1X_ERROR VL53L1X_StartTemperatureUpdate(uint16_t dev);
# 66 "vl53l1_ULD/core/VL53L1X_api.c" 2
# 106 "vl53l1_ULD/core/VL53L1X_api.c"
const uint8_t VL51L1X_DEFAULT_CONFIGURATION[] = {
0x00,
0x00,
0x00,
0x01,
0x02,
0x00,
0x02,
0x08,
0x00,
0x08,
0x10,
0x01,
0x01,
0x00,
0x00,
0x00,
0x00,
0xff,
0x00,
0x0F,
0x00,
0x00,
0x00,
0x00,
0x00,
0x20,
0x0b,
0x00,
0x00,
0x02,
0x0a,
0x21,
0x00,
0x00,
0x05,
0x00,
0x00,
0x00,
0x00,
0xc8,
0x00,
0x00,
0x38,
0xff,
0x01,
0x00,
0x08,
0x00,
0x00,
0x01,
0xcc,
0x0f,
0x01,
0xf1,
0x0d,
0x01,
0x68,
0x00,
0x80,
0x08,
0xb8,
0x00,
0x00,
0x00,
0x00,
0x0f,
0x89,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x01,
0x0f,
0x0d,
0x0e,
0x0e,
0x00,
0x00,
0x02,
0xc7,
0xff,
0x9B,
0x00,
0x00,
0x00,
0x01,
0x00,
0x00
};

static const uint8_t status_rtn[24] = { 255, 255, 255, 5, 2, 4, 1, 7, 3, 0,
 255, 255, 9, 13, 255, 255, 255, 255, 10, 6,
 255, 255, 11, 12
};

VL53L1X_ERROR VL53L1X_GetSWVersion(VL53L1X_Version_t *pVersion)
{
 VL53L1X_ERROR Status = 0;

 pVersion->major = 3;
 pVersion->minor = 3;
 pVersion->build = 0;
 pVersion->revision = 0000;
 return Status;
}

VL53L1X_ERROR VL53L1X_SetI2CAddress(uint16_t dev, uint8_t new_address)
{
 VL53L1X_ERROR status = 0;

 status = VL53L1_WrByte(dev, 0x0029, new_address >> 1);
 return status;
}

VL53L1X_ERROR VL53L1X_SensorInit(uint16_t dev)
{
 VL53L1X_ERROR status = 0;
 uint8_t Addr = 0x00, tmp;

 for (Addr = 0x2D; Addr <= 0x87; Addr++){
  status = VL53L1_WrByte(dev, Addr, VL51L1X_DEFAULT_CONFIGURATION[Addr - 0x2D]);
 }
 status = VL53L1X_StartRanging(dev);
 tmp = 0;
 while(tmp==0){
   status = VL53L1X_CheckForDataReady(dev, &tmp);
 }
 status = VL53L1X_ClearInterrupt(dev);
 status = VL53L1X_StopRanging(dev);
 status = VL53L1_WrByte(dev, 0x0008, 0x09);
 status = VL53L1_WrByte(dev, 0x0B, 0);
 return status;
}

VL53L1X_ERROR VL53L1X_ClearInterrupt(uint16_t dev)
{
 VL53L1X_ERROR status = 0;

 status = VL53L1_WrByte(dev, 0x0086, 0x01);
 return status;
}

VL53L1X_ERROR VL53L1X_SetInterruptPolarity(uint16_t dev, uint8_t NewPolarity)
{
 uint8_t Temp;
 VL53L1X_ERROR status = 0;

 status = VL53L1_RdByte(dev, 0x0030, &Temp);
 Temp = Temp & 0xEF;
 status = VL53L1_WrByte(dev, 0x0030, Temp | (!(NewPolarity & 1)) << 4);
 return status;
}

VL53L1X_ERROR VL53L1X_GetInterruptPolarity(uint16_t dev, uint8_t *pInterruptPolarity)
{
 uint8_t Temp;
 VL53L1X_ERROR status = 0;

 status = VL53L1_RdByte(dev, 0x0030, &Temp);
 Temp = Temp & 0x10;
 *pInterruptPolarity = !(Temp>>4);
 return status;
}

VL53L1X_ERROR VL53L1X_StartRanging(uint16_t dev)
{
 VL53L1X_ERROR status = 0;

 status = VL53L1_WrByte(dev, 0x0087, 0x40);
 return status;
}

VL53L1X_ERROR VL53L1X_StopRanging(uint16_t dev)
{
 VL53L1X_ERROR status = 0;

 status = VL53L1_WrByte(dev, 0x0087, 0x00);
 return status;
}

VL53L1X_ERROR VL53L1X_CheckForDataReady(uint16_t dev, uint8_t *isDataReady)
{
 uint8_t Temp;
 uint8_t IntPol;
 VL53L1X_ERROR status = 0;

 status = VL53L1X_GetInterruptPolarity(dev, &IntPol);
 status = VL53L1_RdByte(dev, 0x0031, &Temp);

 if (status == 0){
  if ((Temp & 1) == IntPol)
   *isDataReady = 1;
  else
   *isDataReady = 0;
 }
 return status;
}

VL53L1X_ERROR VL53L1X_SetTimingBudgetInMs(uint16_t dev, uint16_t TimingBudgetInMs)
{
 uint16_t DM;
 VL53L1X_ERROR status=0;

 status = VL53L1X_GetDistanceMode(dev, &DM);
 if (DM == 0)
  return 1;
 else if (DM == 1) {
  switch (TimingBudgetInMs) {
  case 15:
   VL53L1_WrWord(dev, 0x005E,
     0x01D);
   VL53L1_WrWord(dev, 0x0061,
     0x0027);
   break;
  case 20:
   VL53L1_WrWord(dev, 0x005E,
     0x0051);
   VL53L1_WrWord(dev, 0x0061,
     0x006E);
   break;
  case 33:
   VL53L1_WrWord(dev, 0x005E,
     0x00D6);
   VL53L1_WrWord(dev, 0x0061,
     0x006E);
   break;
  case 50:
   VL53L1_WrWord(dev, 0x005E,
     0x1AE);
   VL53L1_WrWord(dev, 0x0061,
     0x01E8);
   break;
  case 100:
   VL53L1_WrWord(dev, 0x005E,
     0x02E1);
   VL53L1_WrWord(dev, 0x0061,
     0x0388);
   break;
  case 200:
   VL53L1_WrWord(dev, 0x005E,
     0x03E1);
   VL53L1_WrWord(dev, 0x0061,
     0x0496);
   break;
  case 500:
   VL53L1_WrWord(dev, 0x005E,
     0x0591);
   VL53L1_WrWord(dev, 0x0061,
     0x05C1);
   break;
  default:
   status = 1;
   break;
  }
 } else {
  switch (TimingBudgetInMs) {
  case 20:
   VL53L1_WrWord(dev, 0x005E,
     0x001E);
   VL53L1_WrWord(dev, 0x0061,
     0x0022);
   break;
  case 33:
   VL53L1_WrWord(dev, 0x005E,
     0x0060);
   VL53L1_WrWord(dev, 0x0061,
     0x006E);
   break;
  case 50:
   VL53L1_WrWord(dev, 0x005E,
     0x00AD);
   VL53L1_WrWord(dev, 0x0061,
     0x00C6);
   break;
  case 100:
   VL53L1_WrWord(dev, 0x005E,
     0x01CC);
   VL53L1_WrWord(dev, 0x0061,
     0x01EA);
   break;
  case 200:
   VL53L1_WrWord(dev, 0x005E,
     0x02D9);
   VL53L1_WrWord(dev, 0x0061,
     0x02F8);
   break;
  case 500:
   VL53L1_WrWord(dev, 0x005E,
     0x048F);
   VL53L1_WrWord(dev, 0x0061,
     0x04A4);
   break;
  default:
   status = 1;
   break;
  }
 }
 return status;
}

VL53L1X_ERROR VL53L1X_GetTimingBudgetInMs(uint16_t dev, uint16_t *pTimingBudget)
{
 uint16_t Temp;
 VL53L1X_ERROR status = 0;

 status = VL53L1_RdWord(dev, 0x005E, &Temp);
 switch (Temp) {
  case 0x001D :
   *pTimingBudget = 15;
   break;
  case 0x0051 :
  case 0x001E :
   *pTimingBudget = 20;
   break;
  case 0x00D6 :
  case 0x0060 :
   *pTimingBudget = 33;
   break;
  case 0x1AE :
  case 0x00AD :
   *pTimingBudget = 50;
   break;
  case 0x02E1 :
  case 0x01CC :
   *pTimingBudget = 100;
   break;
  case 0x03E1 :
  case 0x02D9 :
   *pTimingBudget = 200;
   break;
  case 0x0591 :
  case 0x048F :
   *pTimingBudget = 500;
   break;
  default:
   status = 1;
   *pTimingBudget = 0;
 }
 return status;
}

VL53L1X_ERROR VL53L1X_SetDistanceMode(uint16_t dev, uint16_t DM)
{
 uint16_t TB;
 VL53L1X_ERROR status = 0;

 status = VL53L1X_GetTimingBudgetInMs(dev, &TB);
 if (status != 0)
  return 1;
 switch (DM) {
 case 1:
  status = VL53L1_WrByte(dev, 0x004B, 0x14);
  status = VL53L1_WrByte(dev, 0x0060, 0x07);
  status = VL53L1_WrByte(dev, 0x0063, 0x05);
  status = VL53L1_WrByte(dev, 0x0069, 0x38);
  status = VL53L1_WrWord(dev, 0x0078, 0x0705);
  status = VL53L1_WrWord(dev, 0x007A, 0x0606);
  break;
 case 2:
  status = VL53L1_WrByte(dev, 0x004B, 0x0A);
  status = VL53L1_WrByte(dev, 0x0060, 0x0F);
  status = VL53L1_WrByte(dev, 0x0063, 0x0D);
  status = VL53L1_WrByte(dev, 0x0069, 0xB8);
  status = VL53L1_WrWord(dev, 0x0078, 0x0F0D);
  status = VL53L1_WrWord(dev, 0x007A, 0x0E0E);
  break;
 default:
  status = 1;
  break;
 }

 if (status == 0)
  status = VL53L1X_SetTimingBudgetInMs(dev, TB);
 return status;
}

VL53L1X_ERROR VL53L1X_GetDistanceMode(uint16_t dev, uint16_t *DM)
{
 uint8_t TempDM, status=0;

 status = VL53L1_RdByte(dev,0x004B, &TempDM);
 if (TempDM == 0x14)
  *DM=1;
 if(TempDM == 0x0A)
  *DM=2;
 return status;
}

VL53L1X_ERROR VL53L1X_SetInterMeasurementInMs(uint16_t dev, uint32_t InterMeasMs)
{
 uint16_t ClockPLL;
 VL53L1X_ERROR status = 0;

 status = VL53L1_RdWord(dev, 0x00DE, &ClockPLL);
 ClockPLL = ClockPLL&0x3FF;
 VL53L1_WrDWord(dev, 0x006C,
   (uint32_t)(ClockPLL * InterMeasMs * 1.075));
 return status;

}

VL53L1X_ERROR VL53L1X_GetInterMeasurementInMs(uint16_t dev, uint16_t *pIM)
{
 uint16_t ClockPLL;
 VL53L1X_ERROR status = 0;
 uint32_t tmp;

 status = VL53L1_RdDWord(dev,0x006C, &tmp);
 *pIM = (uint16_t)tmp;
 status = VL53L1_RdWord(dev, 0x00DE, &ClockPLL);
 ClockPLL = ClockPLL&0x3FF;
 *pIM= (uint16_t)(*pIM/(ClockPLL*1.065));
 return status;
}

VL53L1X_ERROR VL53L1X_BootState(uint16_t dev, uint8_t *state)
{
 VL53L1X_ERROR status = 0;
 uint8_t tmp = 0;

 status = VL53L1_RdByte(dev,0x00E5, &tmp);
 *state = tmp;
 return status;
}

VL53L1X_ERROR VL53L1X_GetSensorId(uint16_t dev, uint16_t *sensorId)
{
 VL53L1X_ERROR status = 0;
 uint16_t tmp = 0;


 status = VL53L1_RdWord(dev, 0x010F, &tmp);
 *sensorId = tmp;
 return status;
}

VL53L1X_ERROR VL53L1X_GetDistance(uint16_t dev, uint16_t *distance)
{
 VL53L1X_ERROR status = 0;
 uint16_t tmp;

 status = (VL53L1_RdWord(dev,
   0x0096, &tmp));
 *distance = tmp;
 return status;
}

VL53L1X_ERROR VL53L1X_GetSignalPerSpad(uint16_t dev, uint16_t *signalRate)
{
 VL53L1X_ERROR status = 0;
 uint16_t SpNb=1, signal;

 status = VL53L1_RdWord(dev,
  0x0098, &signal);
 status = VL53L1_RdWord(dev,
  0x008C, &SpNb);
 *signalRate = (uint16_t) (2000.0*signal/SpNb);
 return status;
}

VL53L1X_ERROR VL53L1X_GetAmbientPerSpad(uint16_t dev, uint16_t *ambPerSp)
{
 VL53L1X_ERROR status = 0;
 uint16_t AmbientRate, SpNb = 1;

 status = VL53L1_RdWord(dev, 0x0090, &AmbientRate);
 status = VL53L1_RdWord(dev, 0x008C, &SpNb);
 *ambPerSp=(uint16_t) (2000.0 * AmbientRate / SpNb);
 return status;
}

VL53L1X_ERROR VL53L1X_GetSignalRate(uint16_t dev, uint16_t *signal)
{
 VL53L1X_ERROR status = 0;
 uint16_t tmp;

 status = VL53L1_RdWord(dev,
  0x0098, &tmp);
 *signal = tmp*8;
 return status;
}

VL53L1X_ERROR VL53L1X_GetSpadNb(uint16_t dev, uint16_t *spNb)
{
 VL53L1X_ERROR status = 0;
 uint16_t tmp;

 status = VL53L1_RdWord(dev,
         0x008C, &tmp);
 *spNb = tmp >> 8;
 return status;
}

VL53L1X_ERROR VL53L1X_GetAmbientRate(uint16_t dev, uint16_t *ambRate)
{
 VL53L1X_ERROR status = 0;
 uint16_t tmp;

 status = VL53L1_RdWord(dev, 0x0090, &tmp);
 *ambRate = tmp*8;
 return status;
}

VL53L1X_ERROR VL53L1X_GetRangeStatus(uint16_t dev, uint8_t *rangeStatus)
{
 VL53L1X_ERROR status = 0;
 uint8_t RgSt;

 *rangeStatus = 255;
 status = VL53L1_RdByte(dev, 0x0089, &RgSt);
 RgSt = RgSt & 0x1F;
 if (RgSt < 24)
  *rangeStatus = status_rtn[RgSt];
 return status;
}

VL53L1X_ERROR VL53L1X_GetResult(uint16_t dev, VL53L1X_Result_t *pResult)
{
 VL53L1X_ERROR status = 0;
 uint8_t Temp[17];
 uint8_t RgSt = 255;

 status = VL53L1_ReadMulti(dev, 0x0089, Temp, 17);
 RgSt = Temp[0] & 0x1F;
 if (RgSt < 24)
  RgSt = status_rtn[RgSt];
 pResult->Status = RgSt;
 pResult->Ambient = (Temp[7] << 8 | Temp[8]) * 8;
 pResult->NumSPADs = Temp[3];
 pResult->SigPerSPAD = (Temp[15] << 8 | Temp[16]) * 8;
 pResult->Distance = Temp[13] << 8 | Temp[14];

 return status;
}

VL53L1X_ERROR VL53L1X_SetOffset(uint16_t dev, int16_t OffsetValue)
{
 VL53L1X_ERROR status = 0;
 int16_t Temp;

 Temp = (OffsetValue*4);
 VL53L1_WrWord(dev, 0x001E,
   (uint16_t)Temp);
 VL53L1_WrWord(dev, 0x0020, 0x0);
 VL53L1_WrWord(dev, 0x0022, 0x0);
 return status;
}

VL53L1X_ERROR VL53L1X_GetOffset(uint16_t dev, int16_t *offset)
{
 VL53L1X_ERROR status = 0;
 uint16_t Temp;

 status = VL53L1_RdWord(dev,0x001E, &Temp);
 Temp = Temp<<3;
 Temp = Temp>>5;
 *offset = (int16_t)(Temp);
 return status;
}

VL53L1X_ERROR VL53L1X_SetXtalk(uint16_t dev, uint16_t XtalkValue)
{

 VL53L1X_ERROR status = 0;

 status = VL53L1_WrWord(dev,
   0x0018,
   0x0000);
 status = VL53L1_WrWord(dev, 0x001A,
   0x0000);
 status = VL53L1_WrWord(dev, 0x0016,
   (XtalkValue<<9)/1000);
 return status;
}

VL53L1X_ERROR VL53L1X_GetXtalk(uint16_t dev, uint16_t *xtalk )
{
 VL53L1X_ERROR status = 0;
 uint32_t tmp;

 status = VL53L1_RdDWord(dev,0x0016, &tmp);
 *xtalk = (uint16_t)(tmp*1000)>>9;
 return status;
}

VL53L1X_ERROR VL53L1X_SetDistanceThreshold(uint16_t dev, uint16_t ThreshLow,
         uint16_t ThreshHigh, uint8_t Window,
         uint8_t IntOnNoTarget)
{
 VL53L1X_ERROR status = 0;
 uint8_t Temp = 0;

 status = VL53L1_RdByte(dev, 0x0046, &Temp);
 Temp = Temp & 0x47;
 if (IntOnNoTarget == 0) {
  status = VL53L1_WrByte(dev, 0x0046,
          (Temp | (Window & 0x07)));
 } else {
  status = VL53L1_WrByte(dev, 0x0046,
          ((Temp | (Window & 0x07)) | 0x40));
 }
 status = VL53L1_WrWord(dev, 0x0072, ThreshHigh);
 status = VL53L1_WrWord(dev, 0x0074, ThreshLow);
 return status;
}

VL53L1X_ERROR VL53L1X_GetDistanceThresholdWindow(uint16_t dev, uint16_t *window)
{
 VL53L1X_ERROR status = 0;
 uint8_t tmp;
 status = VL53L1_RdByte(dev,0x0046, &tmp);
 *window = (uint16_t)(tmp & 0x7);
 return status;
}

VL53L1X_ERROR VL53L1X_GetDistanceThresholdLow(uint16_t dev, uint16_t *low)
{
 VL53L1X_ERROR status = 0;
 uint16_t tmp;

 status = VL53L1_RdWord(dev,0x0074, &tmp);
 *low = tmp;
 return status;
}

VL53L1X_ERROR VL53L1X_GetDistanceThresholdHigh(uint16_t dev, uint16_t *high)
{
 VL53L1X_ERROR status = 0;
 uint16_t tmp;

 status = VL53L1_RdWord(dev,0x0072, &tmp);
 *high = tmp;
 return status;
}

VL53L1X_ERROR VL53L1X_SetROICenter(uint16_t dev, uint8_t ROICenter)
{
 VL53L1X_ERROR status = 0;
 status = VL53L1_WrByte(dev, 0x007F, ROICenter);
 return status;
}

VL53L1X_ERROR VL53L1X_GetROICenter(uint16_t dev, uint8_t *ROICenter)
{
 VL53L1X_ERROR status = 0;
 uint8_t tmp;
 status = VL53L1_RdByte(dev, 0x007F, &tmp);
 *ROICenter = tmp;
 return status;
}

VL53L1X_ERROR VL53L1X_SetROI(uint16_t dev, uint16_t X, uint16_t Y)
{
 uint8_t OpticalCenter;
 VL53L1X_ERROR status = 0;

 status =VL53L1_RdByte(dev, 0x013E, &OpticalCenter);
 if (X > 16)
  X = 16;
 if (Y > 16)
  Y = 16;
 if (X > 10 || Y > 10){
  OpticalCenter = 199;
 }
 status = VL53L1_WrByte(dev, 0x007F, OpticalCenter);
 status = VL53L1_WrByte(dev, 0x0080,
         (Y - 1) << 4 | (X - 1));
 return status;
}

VL53L1X_ERROR VL53L1X_GetROI_XY(uint16_t dev, uint16_t *ROI_X, uint16_t *ROI_Y)
{
 VL53L1X_ERROR status = 0;
 uint8_t tmp;

 status = VL53L1_RdByte(dev,0x0080, &tmp);
 *ROI_X = ((uint16_t)tmp & 0x0F) + 1;
 *ROI_Y = (((uint16_t)tmp & 0xF0) >> 4) + 1;
 return status;
}

VL53L1X_ERROR VL53L1X_SetSignalThreshold(uint16_t dev, uint16_t Signal)
{
 VL53L1X_ERROR status = 0;

 VL53L1_WrWord(dev,0x0066,Signal>>3);
 return status;
}

VL53L1X_ERROR VL53L1X_GetSignalThreshold(uint16_t dev, uint16_t *signal)
{
 VL53L1X_ERROR status = 0;
 uint16_t tmp;

 status = VL53L1_RdWord(dev,
    0x0066, &tmp);
 *signal = tmp <<3;
 return status;
}

VL53L1X_ERROR VL53L1X_SetSigmaThreshold(uint16_t dev, uint16_t Sigma)
{
 VL53L1X_ERROR status = 0;

 if(Sigma>(0xFFFF>>2)){
  return 1;
 }

 status = VL53L1_WrWord(dev,0x0064,Sigma<<2);
 return status;
}

VL53L1X_ERROR VL53L1X_GetSigmaThreshold(uint16_t dev, uint16_t *sigma)
{
 VL53L1X_ERROR status = 0;
 uint16_t tmp;

 status = VL53L1_RdWord(dev,0x0064, &tmp);
 *sigma = tmp >> 2;
 return status;

}

VL53L1X_ERROR VL53L1X_StartTemperatureUpdate(uint16_t dev)
{
 VL53L1X_ERROR status = 0;
 uint8_t tmp=0;

 status = VL53L1_WrByte(dev,0x0008,0x81);
 status = VL53L1_WrByte(dev,0x0B,0x92);
 status = VL53L1X_StartRanging(dev);
 while(tmp==0){
  status = VL53L1X_CheckForDataReady(dev, &tmp);
 }
 tmp = 0;
 status = VL53L1X_ClearInterrupt(dev);
 status = VL53L1X_StopRanging(dev);
 status = VL53L1_WrByte(dev, 0x0008, 0x09);
 status = VL53L1_WrByte(dev, 0x0B, 0);
 return status;
}
