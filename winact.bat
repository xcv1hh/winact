::==============================================================
::                                                             |
::        The script below gets your windows version and       |
::                                                             |
::                      activates it                           |
::                                                             |
::            Thank you for downloading the script             |
::                                                             |
::==============================================================
@echo off
:: windows version getter
FOR /F "tokens=* USEBACKQ" %%F IN (`systeminfo ^| findstr /B /C:"OS Name"`) DO (
SET osname=%%F
)
:: formatting the osname string by removing the unnecessary parts
set osver=%osname:OS Name:                   Microsoft =% 
:: windows 10/11 versions checker
if /i "%osver%"=="Windows 11 Pro" goto win110pro
if /i "%osver%"=="Windows 10 Pro" goto win110pro
if /i "%osver%"=="Windows 11 Pro N" goto win110pron
if /i "%osver%"=="Windows 10 Pro N" goto win110pron
if /i "%osver%"=="Windows 11 Pro for Workstations" goto win110prows
if /i "%osver%"=="Windows 10 Pro for Workstations" goto win110prows
if /i "%osver%"=="Windows 11 Pro for Workstations N" goto win110prowsn
if /i "%osver%"=="Windows 10 Pro for Workstations N" goto win110prowsn
if /i "%osver%"=="Windows 11 Pro Education" goto win110proedu
if /i "%osver%"=="Windows 10 Pro Education" goto win110proedu
if /i "%osver%"=="Windows 11 Pro Education N" goto win110proedun
if /i "%osver%"=="Windows 10 Pro Education N" goto win110proedun
if /i "%osver%"=="Windows 11 Education" goto win110edu
if /i "%osver%"=="Windows 10 Education" goto win110edu
if /i "%osver%"=="Windows 11 Education N" goto win110edun
if /i "%osver%"=="Windows 10 Education N" goto win110edun
if /i "%osver%"=="Windows 11 Enterprise" goto win110ep
if /i "%osver%"=="Windows 10 Enterprise" goto win110ep
if /i "%osver%"=="Windows 11 Enterprise N" goto win110epn
if /i "%osver%"=="Windows 10 Enterprise N" goto win110epn
if /i "%osver%"=="Windows 11 Enterprise G" goto win110epg
if /i "%osver%"=="Windows 10 Enterprise G" goto win110epg
if /i "%osver%"=="Windows 11 Enterprise G N" goto win110epgn
if /i "%osver%"=="Windows 10 Enterprise G N" goto win110epgn
:: win 10 ltsc/ltsb versions
if /i "%osver%"=="Windows 10 Enterprise LTSC 2021" goto win10epltsc
if /i "%osver%"=="Windows 10 Enterprise LTSC 2019" goto win10epltsc
if /i "%osver%"=="Windows 10 Enterprise N LTSC 2021" goto win10epnltsc
if /i "%osver%"=="Windows 10 Enterprise N LTSC 2019" goto win10epnltsc
if /i "%osver%"=="Windows 10 Enterprise LTSB 2016" goto win10epltsb
if /i "%osver%"=="Windows 10 Enterprise N LTSB 2016" goto win10epnltsb
if /i "%osver%"=="Windows 10 Enterprise 2015 LTSB" goto win10ep2015ltsb
if /i "%osver%"=="Windows 10 Enterprise 2015 LTSB N" goto win10ep2015ltsbn
:: win 8.1 versions
if /i "%osver%"=="Windows 8.1 Pro" goto win81pro
if /i "%osver%"=="Windows 8.1 Pro N" goto win81pron
if /i "%osver%"=="Windows 8.1 Enterprise" goto win81ep
if /i "%osver%"=="Windows 8.1 Enterprise N" goto win81epn
:: win 8 versions
if /i "%osver%"=="Windows 8 Pro" goto win8pro
if /i "%osver%"=="Windows 8 Pro N" goto win8pron
if /i "%osver%"=="Windows 8 Enterprise" goto win8ep
if /i "%osver%"=="Windows 8 Enterprise N" goto win8epn
:: win 7 versions
if /i "%osver%"=="Windows 7 Professional" goto win7pro
if /i "%osver%"=="Windows 7 Professional N" goto win7pron
if /i "%osver%"=="Windows 7 Professional E" goto win7proe
if /i "%osver%"=="Windows 7 Enterprise" goto win7ep
if /i "%osver%"=="Windows 7 Enterprise E" goto win7epn
if /i "%osver%"=="Windows 7 Enterprise N" goto win7epe
:: win vista versions
if /i "%osver%"=="Windows Vista Business" goto winvisbus
if /i "%osver%"=="Windows Vista Business N" goto winvisbusn
if /i "%osver%"=="Windows Vista Enterprise" goto winvisep
if /i "%osver%"=="Windows Vista Enterprise N" goto winvisepn
::win 11/10 goto
:win110pro
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
goto activate

:win110pron
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
goto activate

:win110prows
slmgr /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
goto activate

:win110prowsn
slmgr /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF
goto activate

:win110proedu
slmgr /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
goto activate

:win110proedun
slmgr /ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
goto activate

:win110edu
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto activate

:win110edun
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
goto activate

:win110ep
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
goto activate

:win110epn
slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
goto activate

:win110epg
slmgr /ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B
goto activate

:win110epgn
slmgr /ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV
goto activate

::win10 ltsc/ltsb goto

:win10epltsc
slmgr /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
goto activate

:win10epnltsc
slmgr /ipk 92NFX-8DJQP-P6BBQ-THF9C-7CG2H
goto activate

:win10epltsb	
slmgr /ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
goto activate

:win10epnltsb	
slmgr /ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639
goto activate

:win10ep2015ltsb	
slmgr /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9
goto activate

:win10ep2015ltsbn
slmgr /ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ
goto activate

:: win 8.1 goto

:win81pro
slmgr /ipk GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
goto activate

:win81pron
slmgr /ipk HMCNV-VVBFX-7HMBH-CTY9B-B4FXY
goto activate

:win81ep
slmgr /ipk MHF9N-XY6XB-WVXMC-BTDCT-MKKG7
goto activate

:win81epn
slmgr /ipk TT4HM-HN7YT-62K67-RGRQJ-JFFXW
goto activate

:: win 8 goto

:win8pro
slmgr /ipk NG4HW-VH26C-733KW-K6F98-J8CK4
goto activate

:win8pron	
slmgr /ipk XCVCF-2NXM9-723PB-MHCB7-2RYQQ
goto activate

:win8ep	
slmgr /ipk 32JNW-9KQ84-P47T8-D8GGY-CWCK7
goto activate

:win8epn	
slmgr /ipk JMNMF-RHW7P-DMY6X-RF3DR-X2BQT
goto activate

:: win 7 goto

:win7pro
slmgr /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
goto activate

:win7pron	
slmgr /ipk MRPKT-YTG23-K7D7T-X2JMM-QY7MG
goto activate

:win7proe
slmgr /ipk W82YF-2Q76Y-63HXB-FGJG9-GF7QX
goto activate

:win7ep	
slmgr /ipk 33PXH-7Y6KF-2VJC9-XBBR8-HVTHH
goto activate

:win7epn
slmgr /ipk YDRBP-3D83W-TY26F-D46B2-XCKRJ
goto activate

:win7epe
slmgr /ipk C29WB-22CC8-VJ326-GHFJW-H9DH4
goto activate

:: win vista goto

:winvisbus
slmgr /ipk YFKBB-PQJJV-G996G-VWGXY-2V3X8
goto activate

:winvisbusn
slmgr /ipk HMBQG-8H2RH-C77VX-27R82-VMQBT
goto activate

:winvisep 	
slmgr /ipk VKK3X-68KWM-X2YGT-QR4M6-4BWMV
goto activate

:winvisepn	
slmgr /ipk VTC42-BM838-43QHV-84HX6-XJXKV
goto activate

::starts the actual activation process
:activate
slmgr /sKMS kms.digiboy.ir
slmgr /ato
