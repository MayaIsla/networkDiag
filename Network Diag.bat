Title Basic Network Diagnostics Information & mode con: cols=71 lines=16
set "LOG=Basic_Network_Diagnostics_Information.log"
set "TFN=%Temp%\%LOG%"
if exist %TFN% (del /f /q %TFN% >nul 2>&1)
echo. & echo  Processing [ Collecting Basic Network Diagnostics Information ] . . .
echo. & echo  ---------------------------------------------------------------------&>> %TFN% echo.
>> %TFN% echo ##########################################################################################
>> %TFN% echo # Title     : Network Diagnostics Information                                            #
>> %TFN% echo # Created By: Maya Islambouli                                                            #
>> %TFN% echo #           : https://github.com/MayaIsla                                                #
>> %TFN% echo # Created On: 11-Feb-2022                                                                #
>> %TFN% echo ##########################################################################################
>> %TFN%      ver                                                                                       &>> %TFN% echo.
>> %TFN% echo Started: %Date% at %Time%                                                                 &>> %TFN% echo.
>> %TFN% echo ========================================= START ==========================================
echo. & echo  Getting Network Information . . .
>> %TFN% echo Network Adapter[s] Status:
>> %TFN% echo ==========================================================================================
>> %TFN%      netsh interface show interface
>> %TFN%      netsh interface ip show interfaces
>> %TFN%      netsh mbn show interfaces
>> %TFN% echo ==========================================================================================
>> %TFN% echo IP Configuration FULL [ ipconfig /all ]:
>> %TFN% echo ==========================================================================================
>> %TFN%      ipconfig /all                                                                             &>> %TFN% echo.
>> %TFN% echo ==========================================================================================
>> %TFN%      netsh winsock reset                                                                            &>> %TFN% echo.
>> %TFN% echo ==========================================================================================
>> %TFN%      netsh int ip reset                                                                             &>> %TFN% echo.
>> %TFN% echo ==========================================================================================
>> %TFN%      ipconfig /release                                                                             &>> %TFN% echo.
>> %TFN% echo ==========================================================================================
>> %TFN%      ipconfig /renew                                                                             &>> %TFN% echo.
>> %TFN% echo ==========================================================================================
>> %TFN% echo Routing Table:
>> %TFN% echo ==========================================================================================&>> %TFN% echo.
>> %TFN%      netstat -r                                                                                &>> %TFN% echo.
>> %TFN% echo ==========================================================================================
        echo  Running Ping . . . 
>> %TFN% echo Ping Loopback Adapter [ THIS Computer ]:
>> %TFN% echo ==========================================================================================
>> %TFN%      ping 127.0.0.1                                                                            &>> %TFN% echo.
>> %TFN% echo ==========================================================================================
>> %TFN% echo Ping 8.8.4.4 [ dns.Google.com ]:
>> %TFN% echo ==========================================================================================
>> %TFN%      ping 8.8.4.4                                                                              &>> %TFN% echo.
>> %TFN% echo ==========================================================================================
>> %TFN% echo Ping dns.Google.com:
>> %TFN% echo ==========================================================================================
>> %TFN%      ping dns.google.com                                                                       &>> %TFN% echo.
>> %TFN% echo ==========================================================================================
        echo  Running NSLookup . . .
>> %TFN% echo NSLookup 8.8.4.4 [ dns.Google.com ]:
>> %TFN% echo ==========================================================================================&>> %TFN% echo.
>> %TFN%      nslookup 8.8.4.4 2>nul
>> %TFN% echo ==========================================================================================
>> %TFN% echo NSLookup dns.Google.com
>> %TFN% echo ==========================================================================================&>> %TFN% echo.
>> %TFN%      nslookup dns.google.com 2>nul
>> %TFN% echo ==========================================================================================
        echo  Running TraceRT . . . 
>> %TFN% echo TraceRT 8.8.4.4 [ dns.Google.com ]:
>> %TFN% echo ==========================================================================================
>> %TFN%      tracert 8.8.4.4                                                                           &>> %TFN% echo.
>> %TFN% echo ==========================================================================================
>> %TFN% echo TraceRT dns.Google.com:
>> %TFN% echo ==========================================================================================
>> %TFN%      tracert dns.google.com                                                                    &>> %TFN% echo.
>> %TFN% echo ========================================== EOF ===========================================&>> %TFN% echo.
>> %TFN% echo Completed: %Date% at %Time%
echo. & echo  ---------------------------------------------------------------------
echo. & echo  Processing Complete.
              start Notepad %TFN% & timeout /t 3 /nobreak >nul & del %TFN%
echo. & echo ^>Press ANY key to EXIT . . . & pause >nul & Exit
