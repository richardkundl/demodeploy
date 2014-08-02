@echo Off

set configuration=%1
if "%configuration%" == "" (
   set configuration=debug
)

set version=%2
if "%version%" == "" (
   set version=1
)

call clean.cmd
call build.cmd %configuration% %version%
call test.cmd %configuration% %version%