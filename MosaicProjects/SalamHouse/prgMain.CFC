PROGRAM prgMain
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    pracovna               : fbPracovna;
    jalouse {PUBLIC_IFOX} : fbJalousie;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="pokus.xsl" version="1.1"?>
<fbd version="1.1">
<comment id="1" height="3" width="12">
  <position x="2" y="2" />
Komentář ke schématu
</comment>
<block name="fbPracovna" instance="pracovna" id="2" height="2" width="9" line="3" order="1">
  <position x="46" y="18" />
</block>
<block name="fbJalousie" instance="jalouse" id="3" height="10" width="16" line="5" order="2">
  <position x="52" y="29" />
  <inVariables>
    <variable name="JALOUSIE_NAME" type="STRING">
    </variable>
  </inVariables>
  <outVariables>
    <variable name="UP" type="BOOL">
    </variable>
    <variable name="DOWN" type="BOOL">
    </variable>
    <variable name="UP2" type="BOOL">
    </variable>
    <variable name="DOWN2" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="PRA_ZAL_M15_1_UP" type="BOOL" id="4" order="3">
  <position x="71" y="31" />
  <connection refid="3" name="UP">
    <position x="72" y="32" />
    <position x="69" y="32" />
    <position x="69" y="32" />
    <position x="68" y="32" />
  </connection>
</outVariable>
<outVariable name="PRA_ZAL_M15_1_DOWN" type="BOOL" id="5" order="4">
  <position x="71" y="33" />
  <connection refid="3" name="DOWN">
    <position x="72" y="34" />
    <position x="69" y="34" />
    <position x="69" y="34" />
    <position x="68" y="34" />
  </connection>
</outVariable>
<outVariable name="M11_1_JID_ZAL_UP" type="BOOL" id="6" order="5">
  <position x="83" y="37" />
  <connection refid="12">
    <position x="84" y="38" />
    <position x="76" y="38" />
    <position x="76" y="38" />
    <position x="74" y="38" />
  </connection>
</outVariable>
<outVariable name="M13_1_KUC_OKV_ZAL_UP" type="BOOL" id="7" order="6">
  <position x="83" y="39" />
  <connection refid="13">
    <position x="84" y="40" />
    <position x="76" y="40" />
    <position x="76" y="40" />
    <position x="74" y="40" />
  </connection>
</outVariable>
<outVariable name="M13_2_KUC_OKJ_ZAL_UP" type="BOOL" id="8" order="7">
  <position x="83" y="41" />
  <connection refid="14">
    <position x="84" y="42" />
    <position x="76" y="42" />
    <position x="76" y="42" />
    <position x="74" y="42" />
  </connection>
</outVariable>
<outVariable name="M13_3_KUC_OKZ_ZAL_UP" type="BOOL" id="9" order="8">
  <position x="83" y="43" />
  <connection refid="15">
    <position x="84" y="44" />
    <position x="76" y="44" />
    <position x="76" y="44" />
    <position x="74" y="44" />
  </connection>
</outVariable>
<outVariable name="M14_1_OBY_OKJ_ZAL_UP" type="BOOL" id="10" order="9">
  <position x="83" y="45" />
  <connection refid="16">
    <position x="84" y="46" />
    <position x="76" y="46" />
    <position x="76" y="46" />
    <position x="74" y="46" />
  </connection>
</outVariable>
<outVariable name="M14_2_OBY_OKS_ZAL_UP" type="BOOL" id="11" order="10">
  <position x="83" y="47" />
  <connection refid="16">
    <position x="84" y="48" />
    <position x="74" y="48" />
    <position x="74" y="46" />
    <position x="74" y="46" />
  </connection>
</outVariable>
<node id="12">
  <position x="74" y="38" />
  <connection refid="3" name="UP2">
    <position x="74" y="38" />
    <position x="73" y="38" />
    <position x="73" y="36" />
    <position x="68" y="36" />
  </connection>
</node>
<node id="13">
  <position x="74" y="40" />
  <connection refid="12">
    <position x="74" y="40" />
    <position x="74" y="40" />
    <position x="74" y="38" />
    <position x="74" y="38" />
  </connection>
</node>
<node id="14">
  <position x="74" y="42" />
  <connection refid="13">
    <position x="74" y="42" />
    <position x="74" y="42" />
    <position x="74" y="40" />
    <position x="74" y="40" />
  </connection>
</node>
<node id="15">
  <position x="74" y="44" />
  <connection refid="14">
    <position x="74" y="44" />
    <position x="74" y="44" />
    <position x="74" y="42" />
    <position x="74" y="42" />
  </connection>
</node>
<node id="16">
  <position x="74" y="46" />
  <connection refid="15">
    <position x="74" y="46" />
    <position x="74" y="46" />
    <position x="74" y="44" />
    <position x="74" y="44" />
  </connection>
</node>
<outVariable name="M11_1_JID_ZAL_DOWN" type="BOOL" id="17" order="11">
  <position x="83" y="54" />
  <connection refid="23">
    <position x="84" y="55" />
    <position x="78" y="55" />
    <position x="78" y="55" />
    <position x="72" y="55" />
  </connection>
</outVariable>
<outVariable name="M13_1_KUC_OKV_ZAL_DOWN" type="BOOL" id="18" order="12">
  <position x="83" y="56" />
  <connection refid="24">
    <position x="84" y="57" />
    <position x="78" y="57" />
    <position x="78" y="57" />
    <position x="72" y="57" />
  </connection>
</outVariable>
<outVariable name="M13_2_KUC_OKJ_ZAL_DOWN" type="BOOL" id="19" order="13">
  <position x="83" y="58" />
  <connection refid="25">
    <position x="84" y="59" />
    <position x="78" y="59" />
    <position x="78" y="59" />
    <position x="72" y="59" />
  </connection>
</outVariable>
<outVariable name="M13_3_KUC_OKZ_ZAL_DOWN" type="BOOL" id="20" order="14">
  <position x="83" y="60" />
  <connection refid="26">
    <position x="84" y="61" />
    <position x="78" y="61" />
    <position x="78" y="61" />
    <position x="72" y="61" />
  </connection>
</outVariable>
<outVariable name="M14_1_OBY_OKJ_ZAL_DOWN" type="BOOL" id="21" order="15">
  <position x="83" y="62" />
  <connection refid="27">
    <position x="84" y="63" />
    <position x="78" y="63" />
    <position x="78" y="63" />
    <position x="72" y="63" />
  </connection>
</outVariable>
<outVariable name="M14_2_OBY_OKS_ZAL_DOWN" type="BOOL" id="22" order="16">
  <position x="83" y="64" />
  <connection refid="27">
    <position x="84" y="65" />
    <position x="72" y="65" />
    <position x="72" y="63" />
    <position x="72" y="63" />
  </connection>
</outVariable>
<node id="23">
  <position x="72" y="55" />
  <connection refid="3" name="DOWN2">
    <position x="72" y="55" />
    <position x="72" y="55" />
    <position x="72" y="38" />
    <position x="68" y="38" />
  </connection>
</node>
<node id="24">
  <position x="72" y="57" />
  <connection refid="23">
    <position x="72" y="57" />
    <position x="72" y="57" />
    <position x="72" y="55" />
    <position x="72" y="55" />
  </connection>
</node>
<node id="25">
  <position x="72" y="59" />
  <connection refid="24">
    <position x="72" y="59" />
    <position x="72" y="59" />
    <position x="72" y="57" />
    <position x="72" y="57" />
  </connection>
</node>
<node id="26">
  <position x="72" y="61" />
  <connection refid="25">
    <position x="72" y="61" />
    <position x="72" y="61" />
    <position x="72" y="59" />
    <position x="72" y="59" />
  </connection>
</node>
<node id="27">
  <position x="72" y="63" />
  <connection refid="26">
    <position x="72" y="63" />
    <position x="72" y="63" />
    <position x="72" y="61" />
    <position x="72" y="61" />
  </connection>
</node>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 100	*)	_Nod_Tmp_2	:	BOOL;
(* 199	*)	_Nod_Tmp_1	:	BOOL;
END_VAR

//NC
//N000
(*   8	*)	CAL	pracovna()
//N001
(*  11	*)	CAL	jalouse()
(*  11	*)	LD 	jalouse.UP
(*  28	*)	ST 	PRA_ZAL_M15_1_UP
(*  11	*)	LD 	jalouse.DOWN
(*  37	*)	ST 	PRA_ZAL_M15_1_DOWN
(*  11	*)	LD 	jalouse.UP2
(* 100	*)	ST	_Nod_Tmp_2
(*  46	*)	ST 	M11_1_JID_ZAL_UP
(* 100	*)	LD	_Nod_Tmp_2
(*  55	*)	ST 	M13_1_KUC_OKV_ZAL_UP
(* 109	*)	LD	_Nod_Tmp_2
(*  64	*)	ST 	M13_2_KUC_OKJ_ZAL_UP
(* 118	*)	LD	_Nod_Tmp_2
(*  73	*)	ST 	M13_3_KUC_OKZ_ZAL_UP
(* 127	*)	LD	_Nod_Tmp_2
(*  82	*)	ST 	M14_1_OBY_OKJ_ZAL_UP
(* 136	*)	LD	_Nod_Tmp_2
(*  91	*)	ST 	M14_2_OBY_OKS_ZAL_UP
(*  11	*)	LD 	jalouse.DOWN2
(* 199	*)	ST	_Nod_Tmp_1
(* 145	*)	ST 	M11_1_JID_ZAL_DOWN
(* 199	*)	LD	_Nod_Tmp_1
(* 154	*)	ST 	M13_1_KUC_OKV_ZAL_DOWN
(* 208	*)	LD	_Nod_Tmp_1
(* 163	*)	ST 	M13_2_KUC_OKJ_ZAL_DOWN
(* 217	*)	LD	_Nod_Tmp_1
(* 172	*)	ST 	M13_3_KUC_OKZ_ZAL_DOWN
(* 226	*)	LD	_Nod_Tmp_1
(* 181	*)	ST 	M14_1_OBY_OKJ_ZAL_DOWN
(* 235	*)	LD	_Nod_Tmp_1
(* 190	*)	ST 	M14_2_OBY_OKS_ZAL_DOWN

END_PROGRAM
