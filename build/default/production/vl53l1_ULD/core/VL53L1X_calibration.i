# 1 "vl53l1_ULD/core/VL53L1X_calibration.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/xc8/v2.05/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "vl53l1_ULD/core/VL53L1X_calibration.c" 2
# 66 "vl53l1_ULD/core/VL53L1X_calibration.c"
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
# 67 "vl53l1_ULD/core/VL53L1X_calibration.c" 2
# 1 "vl53l1_ULD/core/VL53L1X_calibration.h" 1
# 78 "vl53l1_ULD/core/VL53L1X_calibration.h"
int8_t VL53L1X_CalibrateOffset(uint16_t dev, uint16_t TargetDistInMm, int16_t *offset);
# 91 "vl53l1_ULD/core/VL53L1X_calibration.h"
int8_t VL53L1X_CalibrateXtalk(uint16_t dev, uint16_t TargetDistInMm, uint16_t *xtalk);
# 68 "vl53l1_ULD/core/VL53L1X_calibration.c" 2





int8_t VL53L1X_CalibrateOffset(uint16_t dev, uint16_t TargetDistInMm, int16_t *offset)
{
 uint8_t i, tmp;
 int16_t AverageDistance = 0;
 uint16_t distance;
 VL53L1X_ERROR status = 0;

 status = VL53L1_WrWord(dev, 0x001E, 0x0);
 status = VL53L1_WrWord(dev, 0x0020, 0x0);
 status = VL53L1_WrWord(dev, 0x0022, 0x0);
 status = VL53L1X_StartRanging(dev);
 for (i = 0; i < 50; i++) {
  tmp = 0;
  while (tmp == 0){
   status = VL53L1X_CheckForDataReady(dev, &tmp);
  }
  status = VL53L1X_GetDistance(dev, &distance);
  status = VL53L1X_ClearInterrupt(dev);
  AverageDistance = AverageDistance + distance;
 }
 status = VL53L1X_StopRanging(dev);
 AverageDistance = AverageDistance / 50;
 *offset = TargetDistInMm - AverageDistance;
 status = VL53L1_WrWord(dev, 0x001E, *offset*4);
 return status;
}

int8_t VL53L1X_CalibrateXtalk(uint16_t dev, uint16_t TargetDistInMm, uint16_t *xtalk)
{
 uint8_t i, tmp;
 float AverageSignalRate = 0;
 float AverageDistance = 0;
 float AverageSpadNb = 0;
 uint16_t distance = 0, spadNum;
 uint16_t sr;
 VL53L1X_ERROR status = 0;
 uint32_t calXtalk;

 status = VL53L1_WrWord(dev, 0x0016,0);
 status = VL53L1X_StartRanging(dev);
 for (i = 0; i < 50; i++) {
  tmp = 0;
  while (tmp == 0){
   status = VL53L1X_CheckForDataReady(dev, &tmp);
  }
  status= VL53L1X_GetSignalRate(dev, &sr);
  status= VL53L1X_GetDistance(dev, &distance);
  status = VL53L1X_ClearInterrupt(dev);
  AverageDistance = AverageDistance + distance;
  status = VL53L1X_GetSpadNb(dev, &spadNum);
  AverageSpadNb = AverageSpadNb + spadNum;
  AverageSignalRate =
      AverageSignalRate + sr;
 }
 status = VL53L1X_StopRanging(dev);
 AverageDistance = AverageDistance / 50;
 AverageSpadNb = AverageSpadNb / 50;
 AverageSignalRate = AverageSignalRate / 50;

 calXtalk = (uint16_t)(512*(AverageSignalRate*(1-(AverageDistance/TargetDistInMm)))/AverageSpadNb);
 *xtalk = (uint16_t)(calXtalk*1000)>>9;
 status = VL53L1_WrWord(dev, 0x0016, calXtalk);
 return status;
}
