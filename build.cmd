@echo Off

set configuration=%1
if "%configuration%" == "" (
   set configuration=release
)


%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild src/Build.proj /nologo /m /v:m /t:Compile  /p:VisualStudioVersion=12.0;CONFIGURATION="%configuration%" /flp:LogFile="results/msbuild.log" /tv:4.0 /v:m