@echo off
title Windows 11 Product Key Selector

net session >nul 2>&1
if %errorLevel% == 0 (
    goto :main
) else (
    echo This script must be run as administrator.
    echo Right-click on the script and select "Run as administrator".
    pause
    exit
)

:main
echo Select Windows 11 Edition:
echo.
echo 1. Windows 11 Home TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
echo 2. Windows 11 Home N 3KHY7-WNT83-DGQKR-F7HPR-844BM
echo 3. Windows 11 Home Single Language 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
echo 4. Windows 11 Home Country Specific PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
echo 5. Windows 11 Pro W269N-WFGWX-YVC9B-4J6C9-T83GX
echo 6. Windows 11 Pro N MH37W-N47XK-V7XM9-C7227-GCQG9
echo 7. Windows 11 Pro for Workstations NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
echo 8. Windows 11 Pro for Workstations N 9FNHH-K3HBT-3W4RQ-4WPJ4-YTDFH
echo 9. Windows 11 Pro Education 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
echo 10. Windows 11 Pro Education N YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
echo 11. Windows 11 Education NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo 12. Windows 11 Education N 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
echo 13. Windows 11 Enterprise NPPR9-FWDCX-D2C8J-H872K-2YT43
echo 14. Windows 11 Enterprise N DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
echo 15. Windows 11 Enterprise G YYVX9-NTFWV-6MDM3-9PT4T-4M68B
echo 16. Windows 11 Enterprise G N 44RPN-FTY23-9VTTB-MP9BX-T84FV
echo 17. Windows 11 Enterprise LTSC 2019 M7XTQ-FN8P6-TTKYV-9D4CC-J462D
echo 18. Windows 11 Enterprise N LTSC 2019 92NFX-8DJQP-P6BBQ-THF9C-7CG2H
echo.

set /p choice=Enter your choice (1-18): 

if %choice%==1 (
    set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
) else if %choice%==2 (
    set key=3KHY7-WNT83-DGQKR-F7HPR-844BM
) else if %choice%==3 (
    set key=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
) else if %choice%==4 (
    set key=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
) else if %choice%==5 (
    set key=W269N-WFGWX-YVC9B-4J6C9-T83GX
) else if %choice%==6 (
    set key=MH37W-N47XK-V7XM9-C7227-GCQG9
) else if %choice%==7 (
    set key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
) else if %choice%==8 (
    set key=9FNHH-K3HBT-3W4TD-6383H-6XYWF
) else if %choice%==9 (
    set key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
) else if %choice%==10 (
    set key=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
) else if %choice%==11 (
    set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
) else if %choice%==12 (
    set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
) else if %choice%==13 (
    set key=NPPR9-FWDCX-D2C8J-H872K-2YT43
) else if %choice%==14 (
    set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
) else if %choice%==15 (
    set key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B
) else if %choice%==16 (
    set key=44RPN-FTY23-9VTTB-MP9BX-T84FV
) else if %choice%==17 (
    set key=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
) else if %choice%==18 (
    set key=92NFX-8DJQP-P6BBQ-THF9C-7CG2H
) else (
    echo Invalid choice!
    pause
    exit
)

echo.
echo Selected Product Key: %key%
echo.
pause
slmgr /ipk %key%
slmgr /ato
echo.
echo Activation complete.
pause