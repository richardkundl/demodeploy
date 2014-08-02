@echo Off

set configuration=%1
if "%configuration%" == "" (
   set configuration=debug
)

call clean.cmd
call build.cmd %configuration%
call test.cmd %configuration%