FUNCTION_BLOCK fbJalousie
(*Ovladani zaluzie
*)
  VAR_INPUT
    JALOUSIE_NAME : STRING := 'jmeno zaluzie';
  END_VAR
  VAR_OUTPUT
    UP : BOOL;
    DOWN : BOOL;
    UP2  : BOOL;
    DOWN2: BOOL;
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
    jalousie {PUBLIC_IFOX} : fb_iJalousie;
    JALOUSIE_CETRAL_DELAY : TIME := 0;
    jalousie2 {PUBLIC_IFOX} : fb_iJalousie;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="3" width="12">
  <position x="2" y="2" />
Koment�� ke sch�matu
</comment>
<block name="fb_iJalousie" instance="jalousie" id="2" height="32" width="11" line="3" order="1">
  <position x="41" y="17" />
  <inVariables>
    <variable name="rotUp" type="BOOL R_EDGE">
    <comment>pooto�it �aluzie nahoru</comment>
    </variable>
    <variable name="up" type="BOOL R_EDGE">
    <comment>�aluzie nahoru</comment>
    </variable>
    <variable name="rotDw" type="BOOL R_EDGE">
    <comment>pooto�it �aluzie dolu</comment>
    </variable>
    <variable name="dw" type="BOOL R_EDGE">
    <comment>�aluzie dolu</comment>
    </variable>
    <variable name="block" type="BOOL">
    <comment>blokace ovl�dac�ch vstup�</comment>
    </variable>
    <variable name="stop" type="BOOL R_EDGE">
    <comment>zastaven� pohybu</comment>
    </variable>
    <variable name="ctrUp" type="BOOL R_EDGE">
    <comment>centr�ln� vyta�en� �aluzie</comment>
    </variable>
    <variable name="ctrDw" type="BOOL R_EDGE">
    <comment>centr�ln� spu�t�n� �aluzie</comment>
    </variable>
    <variable name="webUp" type="BOOL R_EDGE">
    <comment>pro vysunut� �aluzi� z web rozhran�</comment>
    </variable>
    <variable name="webDw" type="BOOL R_EDGE">
    <comment>pro spu�t�n� �aluzi� z web rozhran�</comment>
    </variable>
    <variable name="upDwTime" type="TIME">
      <connection refid="4">
        <position x="41" y="40" />
        <position x="37" y="40" />
        <position x="37" y="40" />
        <position x="28" y="40" />
      </connection>
    <comment>maxim�ln� doba b�hu pohonu</comment>
    </variable>
    <variable name="rotTime" type="TIME">
    <comment>doba trv�n� kroku pri poot��en�</comment>
    </variable>
    <variable name="pauseTime" type="TIME">
    <comment>prodleva p�ed oto�en�m sm�ru</comment>
    </variable>
    <variable name="ctrTime" type="TIME">
      <connection refid="8">
        <position x="41" y="46" />
        <position x="32" y="46" />
        <position x="32" y="46" />
        <position x="25" y="46" />
      </connection>
    <comment>zpo�d�n� centr�ln�ho pohybu</comment>
    </variable>
    <variable name="name" type="STRING[24]">
      <connection refid="9">
        <position x="41" y="48" />
        <position x="27" y="48" />
        <position x="27" y="48" />
        <position x="18" y="48" />
      </connection>
    <comment>n�zev �aluzie</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="outUp" type="BOOL">
    <comment>�aluzie nahoru</comment>
    </variable>
    <variable name="outDw" type="BOOL">
    <comment>�aluzie dolu</comment>
    </variable>
    <variable name="sig" type="BOOL">
    <comment>signalizace chodu</comment>
    </variable>
    <variable name="sigUp" type="BOOL">
    <comment>signalizace �aluzie naho�e</comment>
    </variable>
    <variable name="sigDw" type="BOOL">
    <comment>signalizace �aluzie dole</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="jalousieCentralUp" type="BOOL" id="3">
  <position x="5" y="21" />
  <comment>
Vsechny zaluzie nahoru  </comment>
</inVariable>
<inVariable name="JALOUSIE_LONG_TOTAL_TIME" type="TIME" id="4">
  <position x="5" y="39" />
</inVariable>
<inVariable name="jalousieCentralDown" type="BOOL" id="5">
  <position x="5" y="25" />
  <comment>
Vsechny zaluzie dolu  </comment>
</inVariable>
<outVariable name="UP" type="BOOL" id="6" order="3">
  <position x="64" y="19" />
  <connection refid="2" name="outUp">
    <position x="65" y="20" />
    <position x="55" y="20" />
    <position x="55" y="20" />
    <position x="52" y="20" />
  </connection>
</outVariable>
<outVariable name="DOWN" type="BOOL" id="7" order="2">
  <position x="61" y="21" />
  <connection refid="2" name="outDw">
    <position x="62" y="22" />
    <position x="56" y="22" />
    <position x="56" y="22" />
    <position x="52" y="22" />
  </connection>
</outVariable>
<inVariable name="JALOUSIE_CETRAL_DELAY" type="TIME" id="8">
  <position x="5" y="45" />
</inVariable>
<inVariable name="JALOUSIE_NAME" type="STRING" id="9">
  <position x="5" y="47" />
</inVariable>
<block name="fb_iJalousie" instance="jalousie2" id="10" height="32" width="11" line="9" order="4">
  <position x="41" y="55" />
  <inVariables>
    <variable name="rotUp" type="BOOL R_EDGE">
    <comment>pooto�it �aluzie nahoru</comment>
    </variable>
    <variable name="up" type="BOOL R_EDGE">
    <comment>�aluzie nahoru</comment>
    </variable>
    <variable name="rotDw" type="BOOL R_EDGE">
    <comment>pooto�it �aluzie dolu</comment>
    </variable>
    <variable name="dw" type="BOOL R_EDGE">
    <comment>�aluzie dolu</comment>
    </variable>
    <variable name="block" type="BOOL">
    <comment>blokace ovl�dac�ch vstup�</comment>
    </variable>
    <variable name="stop" type="BOOL R_EDGE">
    <comment>zastaven� pohybu</comment>
    </variable>
    <variable name="ctrUp" type="BOOL R_EDGE">
    <comment>centr�ln� vyta�en� �aluzie</comment>
    </variable>
    <variable name="ctrDw" type="BOOL R_EDGE">
    <comment>centr�ln� spu�t�n� �aluzie</comment>
    </variable>
    <variable name="webUp" type="BOOL R_EDGE">
    <comment>pro vysunut� �aluzi� z web rozhran�</comment>
    </variable>
    <variable name="webDw" type="BOOL R_EDGE">
    <comment>pro spu�t�n� �aluzi� z web rozhran�</comment>
    </variable>
    <variable name="upDwTime" type="TIME">
      <connection refid="13">
        <position x="41" y="78" />
        <position x="34" y="78" />
        <position x="34" y="78" />
        <position x="28" y="78" />
      </connection>
    <comment>maxim�ln� doba b�hu pohonu</comment>
    </variable>
    <variable name="rotTime" type="TIME">
    <comment>doba trv�n� kroku pri poot��en�</comment>
    </variable>
    <variable name="pauseTime" type="TIME">
    <comment>prodleva p�ed oto�en�m sm�ru</comment>
    </variable>
    <variable name="ctrTime" type="TIME">
      <connection refid="14">
        <position x="41" y="84" />
        <position x="33" y="84" />
        <position x="33" y="84" />
        <position x="25" y="84" />
      </connection>
    <comment>zpo�d�n� centr�ln�ho pohybu</comment>
    </variable>
    <variable name="name" type="STRING[24]">
      <connection refid="15">
        <position x="41" y="86" />
        <position x="30" y="86" />
        <position x="30" y="86" />
        <position x="18" y="86" />
      </connection>
    <comment>n�zev �aluzie</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="outUp" type="BOOL">
    <comment>�aluzie nahoru</comment>
    </variable>
    <variable name="outDw" type="BOOL">
    <comment>�aluzie dolu</comment>
    </variable>
    <variable name="sig" type="BOOL">
    <comment>signalizace chodu</comment>
    </variable>
    <variable name="sigUp" type="BOOL">
    <comment>signalizace �aluzie naho�e</comment>
    </variable>
    <variable name="sigDw" type="BOOL">
    <comment>signalizace �aluzie dole</comment>
    </variable>
  </outVariables>
</block>
<outVariable name="UP2" type="BOOL" id="11" order="5">
  <position x="61" y="57" />
  <connection refid="10" name="outUp">
    <position x="62" y="58" />
    <position x="55" y="58" />
    <position x="55" y="58" />
    <position x="52" y="58" />
  </connection>
</outVariable>
<outVariable name="DOWN2" type="BOOL" id="12" order="6">
  <position x="61" y="59" />
  <connection refid="10" name="outDw">
    <position x="62" y="60" />
    <position x="56" y="60" />
    <position x="56" y="60" />
    <position x="52" y="60" />
  </connection>
</outVariable>
<inVariable name="JALOUSIE_LONG_TOTAL_TIME" type="TIME" id="13">
  <position x="5" y="77" />
</inVariable>
<inVariable name="JALOUSIE_CETRAL_DELAY" type="TIME" id="14">
  <position x="5" y="83" />
</inVariable>
<inVariable name="JALOUSIE_NAME" type="STRING" id="15">
  <position x="5" y="85" />
</inVariable>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
END_VAR

//NC
//N000
(*   8	*)	CAL	jalousie(upDwTime:=JALOUSIE_LONG_TOTAL_TIME, ctrTime:=JALOUSIE_CETRAL_DELAY, name:=JALOUSIE_NAME)
(*   8	*)	LD 	jalousie.outDw
(* 115	*)	ST 	DOWN
(*   8	*)	LD 	jalousie.outUp
(* 106	*)	ST 	UP
//N003
(* 130	*)	CAL	jalousie2(upDwTime:=JALOUSIE_LONG_TOTAL_TIME, ctrTime:=JALOUSIE_CETRAL_DELAY, name:=JALOUSIE_NAME)
(* 130	*)	LD 	jalousie2.outUp
(* 215	*)	ST 	UP2
(* 130	*)	LD 	jalousie2.outDw
(* 224	*)	ST 	DOWN2

END_FUNCTION_BLOCK
