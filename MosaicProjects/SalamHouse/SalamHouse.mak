; Varov�n�: Tento soubor je spravov�n v�vojov�m prost�ed�m Mosaic.
; Nedoporu�uje se upravovat ho ru�n�!

#program SalamHouse , V1.0
;**************************************
;<ActionName/>
;<Programmer/>
;<FirmName/>
;<Copyright/>
;**************************************
;<History>
;</History>
;**************************************
#useoption CPM = 9              ; Typ CPM: K
#useoption RemZone = 0          ; d�lka remanentn� z�ny
#useoption AlarmTime = 150      ; prvn� v�straha [ms]
#useoption MaxCycleTime = 250   ; maxim�ln� cyklus [ms]
#useoption PLCstart = 1         ; studen� start
#useoption AutoSummerTime = 0   ; vnit�n� hodiny PLC se neposouvaj� p�i p�echodu na letn� �as
#useoption RestartOnError = 0   ; PLC nebude po tvrd� chyb� restartov�no

#uselib "LocalLib\StdLib_V21_20140514.mlb"
#uselib "LocalLib\SysLib_V37_20160627.mlb"
#uselib "LocalLib\ModelLib_V19_20161101.mlb"
#uselib "LocalLib\ComLib_V24_20161019.mlb"
#uselib "LocalLib\FileLib_V22_20160316.mlb"
#uselib "LocalLib\ToStringLib_V13_20110203.mlb"
#uselib "LocalLib\TimeLib_V15_20170216.mlb"
#uselib "LocalLib\EncryptLib_V12_20160923.mlb"
#uselib "LocalLib\InternetLib_V41_20170502.mlb"
#uselib "LocalLib\JsonLibEx_V13_20151026.mlb"
#uselib "LocalLib\CrcLib_V13_20170224.mlb"
#uselib "LocalLib\CanvasLib_V21_20170112.mlb"
#uselib "LocalLib\ConvertLib_V21_20170222.mlb"
#uselib "LocalLib\iControlLib_V20_20170209.mlb"
#endlibs

;**************************************
#usefile "Sysgen\CIBMaker.st", 'auto'
#usefile "SysGen\HWConfig.ST", 'auto'
#usefile "Sysgen\CIBMaker.mos", 'auto'
#usefile "SysGen\SalamHouse.hwc", 'auto'
#usefile "..\MosaicProjects.hwn", 'auto'
#usefile "SALAMHOUSE.ST"
#usefile "prgMain.ST"
#usefile "fbPracovna.CFC"
#usefile "fbJalousie.CFC"
#usefile "fbObyvakKuchyne.CFC"
#usefile "prgMain.CFC"
#usefile "SalamHouse.mcf", 'auto'
