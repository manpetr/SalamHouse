PROGRAM prgMain
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    pracovna : fbPracovna;
    jalouse : fbJalousie;
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
<block name="fbPracovna" instance="pracovna" id="2" height="2" width="9" line="9" order="4">
  <position x="46" y="18" />
</block>
<outVariable name="PRA_ZAL_M15_1_UP" type="BOOL" id="3" order="2">
  <position x="70" y="8" />
  <connection refid="7" name="UP">
    <position x="71" y="9" />
    <position x="68" y="9" />
    <position x="68" y="9" />
    <position x="67" y="9" />
  </connection>
</outVariable>
<outVariable name="PRA_ZAL_M15_1_DOWN" type="BOOL" id="4" order="3">
  <position x="70" y="10" />
  <connection refid="7" name="DOWN">
    <position x="71" y="11" />
    <position x="68" y="11" />
    <position x="68" y="11" />
    <position x="67" y="11" />
  </connection>
</outVariable>
<block name="fbJalousie" instance="jalouse" id="7" height="6" width="16" line="3" order="1">
  <position x="51" y="6" />
  <inVariables>
    <variable name="JALOUSIE_NAME" type="STRING">
    </variable>
  </inVariables>
  <outVariables>
    <variable name="UP" type="BOOL">
    </variable>
    <variable name="DOWN" type="BOOL">
    </variable>
  </outVariables>
</block>
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
(*  29	*)	CAL	jalouse()
(*  29	*)	LD 	jalouse.UP
(*  11	*)	ST 	PRA_ZAL_M15_1_UP
(*  29	*)	LD 	jalouse.DOWN
(*  20	*)	ST 	PRA_ZAL_M15_1_DOWN
//N001
(*   8	*)	CAL	pracovna()

END_PROGRAM