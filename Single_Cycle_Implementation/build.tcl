set PROJ_NAME RoXXon
set PROJ_FOLDER RoXXon
set SOURCE_FOLDER C:/Projects/RoXXon_CPU/RoXXon/Single_Cycle_Implementation/src
set TB_FOLDER C:/Projects/RoXXon_CPU/RoXXon/Single_Cycle_Implementation/tb

# Create Project
create_project $PROJ_NAME ./$PROJ_FOLDER -part xc7z020clg484-1 -force
set_property board_part xilinx.com:zc702:part0:1.4 [current_project]

# Add Design Sources
add_files $SOURCE_FOLDER

# Add Simulation Sources
set_property SOURCE_SET sources_1 [get_filesets sim_1]
add_files -fileset sim_1 -norecurse $TB_FOLDER/RISCV_Processor_tb.sv

