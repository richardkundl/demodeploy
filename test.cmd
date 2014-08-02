@echo Off

set configuration=%1
if "%configuration%" == "" (
   set configuration=debug
)

%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild src/Build.proj /nologo /m /v:m /t:Tests  /p:VisualStudioVersion=12.0;CONFIGURATION="%configuration%";TESTS_CATEGORY="UnitTest|RegressionTest" /flp:LogFile="results/msbuild.log" /tv:4.0 /v:m