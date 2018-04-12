@echo off
set xv_path=D:\\program\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto ce6d5b76751849caad85121c732903f0 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot shift_testtbench_behav xil_defaultlib.shift_testtbench -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
