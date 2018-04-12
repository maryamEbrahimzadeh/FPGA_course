@echo off
set xv_path=D:\\program\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 7ceae0e763e54de291b8c77e6841973f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot testbench_behav xil_defaultlib.testbench -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
