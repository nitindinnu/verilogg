vlib work
vlog D_FF_SYNC.v +acc -l D_FF_SYNC.log
vsim work.D_FF_SYNC_tb
add wave -r *
run -all