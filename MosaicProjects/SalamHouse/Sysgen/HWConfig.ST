(* Upozornìní *)
(* Soubor je automaticky regenerován a všechny ruèní modifikace budou ztracené. *)
(* ---------------------------------------------------------------------- *)
(* Generováno pro TC700 *)
(* ********************************************************************** *)
VAR_GLOBAL CONSTANT
  CPU_TYPE   : USINT := 75;
  CPU_CODE   : UINT  := 1000;
END_VAR

TYPE
  TAIStat : STRUCT
    UNF     : BOOL;
    UNR     : BOOL;
    OVR     : BOOL;
    OVF     : BOOL;
    FLS     : BOOL;
    CJC     : BOOL;
    dummy6 {HIDDEN} : BOOL;
    dummy7 {HIDDEN} : BOOL;
    CHC     : BOOL;
    dummy9 {HIDDEN} : BOOL;
    dummy10 {HIDDEN} : BOOL;
    dummy11 {HIDDEN} : BOOL;
    dummy12 {HIDDEN} : BOOL;
    dummy13 {HIDDEN} : BOOL;
    dummy14 {HIDDEN} : BOOL;
    dummy15 {HIDDEN} : BOOL;
  END_STRUCT;

  TAI : STRUCT
    STAT  : TAIStat;
    FS    : INT;
    ENG   : REAL;
    PCT   : REAL;
  END_STRUCT;

  TAIPW : STRUCT
    UCIB1  : REAL;
    UCIB2  : REAL;
    USRC   : REAL;
    UACU   : REAL;
  END_STRUCT;

  TDI_IR1061 : STRUCT
    DI0   : BOOL;
    DI1   : BOOL;
    DI2   : BOOL;
    DI3   : BOOL;
    IN230  : BOOL;
    HDO    : BOOL;
  END_STRUCT;

  TSTPW : STRUCT
    WCIB1 : BOOL;
    ECIB1 : BOOL;
    WCIB2 : BOOL;
    ECIB2 : BOOL;
    WSRC  : BOOL;
    ESRC  : BOOL;
    WACU  : BOOL;
    EACU  : BOOL;
  END_STRUCT;

  TBIN_2DO : STRUCT
    DO0  : BOOL;
    DO1  : BOOL;
  END_STRUCT;

  TCHStatistic : STRUCT
    STAT       : USINT;
    ERR        : USINT;
    trueMes    : UDINT;
    falseMes   : UDINT;
  END_STRUCT;

  TETHStatistic_BACnet : STRUCT
    STAT       : USINT;
    ERR        : USINT;
    trueMes    : UDINT;
    falseMes   : UDINT;
  END_STRUCT;

  TCHControl : STRUCT
    CONTROL  : UINT;
  END_STRUCT;

END_TYPE
(* ********************************************************************** *)
(* ---------------------------------------------------------------------- *)
(* CP-1000 *)
VAR_GLOBAL
  r0_p0_Statistic_CH1  AT %X7500 : TCHStatistic;
  r0_p0_Control_CH1    AT %Y7500 : TCHControl;
END_VAR
(* ---------------------------------------------------------------------- *)
(* MI2-01M *)
VAR_GLOBAL
  r0_p2_Statistic_MI_CIB1 AT %X0   : TCHStatistic;
  r0_p2_Control_MI_CIB1 AT %Y0   : TCHControl;
  r0_p2_Statistic_MI_CIB2 AT %X10  : TCHStatistic;
  r0_p2_Control_MI_CIB2 AT %Y2   : TCHControl;
(* alias *)
  foxZal1_IN           AT MI_CIB1_IN.ID1_IN;
  foxZal1_OUT          AT MI_CIB1_OUT.ID1_OUT;
  foxZal2_IN           AT MI_CIB1_IN.ID2_IN;
  foxZal2_OUT          AT MI_CIB1_OUT.ID2_OUT;
  PRA_ZAL_M15_1_DOWN   {PUBLIC} AT MI_CIB1_OUT.ID2_OUT.DOs.DO3d;
  PRA_ZAL_M15_1_UP     {PUBLIC} AT MI_CIB1_OUT.ID2_OUT.DOs.DO3u;
END_VAR
(* ---------------------------------------------------------------------- *)
(* IR-1061 *)
VAR_GLOBAL
  r0_p5_DI             AT %X20  : TDI_IR1061;
  r0_p5_STPW           AT %X21  : TSTPW;
  r0_p5_AI0            AT %X22  : TAI;
  r0_p5_AI1            AT %X34  : TAI;
  r0_p5_AI2            AT %X46  : TAI;
  r0_p5_AI3            AT %X58  : TAI;
  r0_p5_AIPW           AT %X70  : TAIPW;
  r0_p5_DO             AT %Y4   : TBIN_2DO;
END_VAR
(* -- *)
(* -- *)
VAR_EXTERNAL
END_VAR
(* -- *)

(* ********************************************************************** *)
(* Generováno programem MOSAIC *)
(* © 2001-2013 Teco a.s. *)
(* Verze : 1.2 *)
(* DLL Verze : 14.4.0.271 *)
