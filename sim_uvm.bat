REM 
REM *************************************************************************
REM
REM        MODELSIM SIMULATION SCRIPT 
REM 
REM *************************************************************************
REM 
@ECHO OFF
REM 
REM *************** Starting sim_uvm_lib.bat ********************
REM 
REM Printing Working Directory:
REM 
cd
REM 
REM Changing Working Directory .....................
REM 
REM @ECHO ON
REM cd C:\Users\HP\WORK_PYTHON\project_mem_eda_5r89\sim\
REM 
REM Printing sim Working Directory to verify we are there ........  
REM  
REM cd
REM @ECHO OFF
SET UVM_HOME="C:\Users\HP\WORK_UVM\uvm-1.1d"
echo UVM_HOME: %UVM_HOME%
echo UVM_HOME: %UVM_HOME%
echo UVM_HOME: %UVM_HOME%
SET UVM_TB_DIR="C:\Users\HP\WORK_PYTHON\PY_UVM_TB_BUILDER\uvm_tb_database_files\uvm_tb_project\mem_eda_5r89"
echo UVM_TB_DIR: %UVM_TB_DIR%
echo UVM_TB_DIR: %UVM_TB_DIR%
echo UVM_TB_DIR: %UVM_TB_DIR%
REM 
REM vsim -voptargs="+acc" +UVM_TESTNAME=mem_wr_rd_test
REM -voptargs=+acc=rmb   ... or ...  -voptargs="+acc" .... or .... -sv_lib uvm_dpi
REM removed +incdir+C:/Users/HP/WORK_UVM/uvm-1.1d/src
vsim -c -voptargs=+acc testbench_top -modelsimini ./modelsim_uvm_1_1d.ini -msgmode both -do C:\Users\HP\WORK_PYTHON\PY_UVM_TB_BUILDER\uvm_tb_database_files\uvm_tb_project\mem_eda_5r89\sim.do -wlf C:\Users\HP\WORK_PYTHON\PY_UVM_TB_BUILDER\uvm_tb_database_files\uvm_tb_project\mem_eda_5r89\mem_dut_wlf.wlf
REM 
REM Optional to load the wlf file and add add waves.
REM vsim -view mem_dut_wlf.wlf 
REM
REM Optional to bring waves up automatically .......
REM vsim -do mem_dut_waves.do 
REM
REM 
REM
REM *************** Completed sim_uvm.bat ******************
REM 
REM 
