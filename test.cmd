@echo Off

set configuration=%1
if "%configuration%" == "" (
   set configuration=debug
)

set version=%2
if "%version%" == "" (
   set version=1
)

%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild src/Build.proj /nologo /m /v:m /t:CodeCoverage  /p:VisualStudioVersion=12.0;CONFIGURATION="%configuration%";ASSEMBLY_BUILD_NUMBER="%version%";TESTS_CATEGORY="UnitTest|RegressionTest" /flp:LogFile="results/msbuild.log" /tv:4.0 /v:m