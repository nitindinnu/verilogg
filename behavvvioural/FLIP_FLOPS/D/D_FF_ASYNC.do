vlib work
vlog D_FF_ASYNC.v +acc -l D_FF_SYNC.log
vsim work.D_FF_ASYNC_tb
add wave -r *
run -all