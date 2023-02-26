# verilogg

# Index

1. [Behavioural model ](#Behavioural_model)
2. [Dataflow model](#Dataflow_model)
3. [Gate Level and Structural - Mixed Model](#Gate-Level-and-Structural-Mixed_Model)
4. [Switch level](<#Switch_level>)



# Behavioural_model
1. [Flip-FLops](<behavvvioural/FLIP_FLOPS>)
	1. D- FF
		1. [D- FF sync](<behavvvioural/FLIP_FLOPS/D/D_FF_SYNC.v>)  [dff 2](<behavioural_modelling/seq_01dff/dff.v>)
		2. [D-FF Async](<behavvvioural/FLIP_FLOPS/D/D_FF_ASYNC.v>)
	2. [JK FF sync](<behavvvioural/FLIP_FLOPS/JK/JK_FF_SYNC.v>) [jk ff 2](<behavioural_modelling/jkflipflop/jkflipflop.v>)
	3. [JK Master Slave](<behavvvioural/FLIP_FLOPS/JK_MASTER_SLAVE/JK_MASTER_SLAVE.v>)
	4. SR FF
		1. [SR sync](<behavvvioural/FLIP_FLOPS/SR/SR_flipflop.v>)  [srff 2](<behavioural_modelling/sr_ff/srff.v>)
		2. [SR async](behavvvioural/FLIP_FLOPS/SR/SR_FF_ASYNC.v)
	5. Conversions of FF
		1. [SR to D](<behavvvioural/FLIP_FLOPS/SR_to_D_FF/SR_to_D_FF.v>)
		2. [SR to JK](<behavvvioural/FLIP_FLOPS/SR_to_JK_FF/SR_to_JK_FF.v>)
	6. T FF
		1. [T sync](<behavvvioural/FLIP_FLOPS/T/T_FF_SYNC.v>) [tff 2](<behavioural_modelling/tff/tff.v>)
		2. [T async](<behavvvioural/FLIP_FLOPS/T/T_FF_ASYNC.v>)
2. Serial Adder
	1. [serial adder 01](<behavvvioural/serial_adder/serial_adder.v>)
	2. [serial adder 02](<behavvvioural/serial_adder/serial_adder2.v>)
3. [D latch using mux](<behavvvioural/DLATCH_using_Mux/DLATCH_using_Mux.v>)
4. even odd prime print [even odd  in verilog](<behavvvioural/even_odd_prime/even_odd.v>)  [prime in verilog](behavvvioural/even_odd_prime/prime.v)
5. Tasks and Functions
	1. Functions in Verilog
		1. [function mux4x1](<behavvvioural/TASK_AND_FUNCTIONS/FUNCTION_Mux4X1.v>)
		2. [Function mux16x1](behavvvioural/TASK_AND_FUNCTIONS/FUNCTION_MUX16x1.v)
		3. [Function not as xor and buffer](<behavvvioural/TASK_AND_FUNCTIONS/FUNCTION_xor_as_not_buffer.v>) 
		4. [Function decoder 4x16 from 3x16](<behavvvioural/TASK_AND_FUNCTIONS/FUNCTION_decoder4x16_from_3x8.v>)
		5. [Task 4 bit FA](behavvvioural/TASK_AND_FUNCTIONS/TASK_as_tb_bit4FA.v)
		6. [Task as TB 4bitFA](<behavvvioural/TASK_AND_FUNCTIONS/TASK_as_tb_bit4FA.v>)
		7. [Task calling a task](<behavvvioural/TASK_AND_FUNCTIONS/TASK_calling_a_TASK.v>)
		8. [Task decoder 4x16 using 3x8](<behavvvioural/TASK_AND_FUNCTIONS/TASK_decoder4x16__using_3x8.v>)
6. Registers
	1. [PISO](<behavvvioural/REGISTERS/PISO/PISO.v>)
	2. [SISO](<behavvvioural/REGISTERS/SISO/SISO.v>)
	3. [SIPO](<behavioural_modelling/reg_sipo/sipo.v>)
	4. [PIPO](<behavioural_modelling/reg_pipo/pipo.v>)
	5. [Universal shift register](<behavvvioural/REGISTERS/Universal_shift_register/Universal_shift_register.v>)
7. Memories
	1. [FIFO sync](<behavvvioural/MEMORIES/FIFO_sync/FIFO_synchronous.v>)
	2. [RAM](behavvvioural/MEMORIES/RAM/RAM_basic.v)
	3. ROM
		1. [rom 8x8](<behavvvioural/MEMORIES/ROM/ROM_8x8.v>)
		2. [ROM 10KB](<behavvvioural/MEMORIES/ROM/ROM_10KB.v>)
8. FSMs
	1. MEALAY
		1. 101
			1. [101 non overlap](<behavvvioural/FINITE STATE MACHINES/MEALAY/mealay_101_nonoverlap.v>)
			2. [101 overlap](<behavvvioural/FINITE STATE MACHINES/MEALAY/mealay_101_overlap.v>)
			3. [101 ol another aproach](<behavvvioural/FINITE STATE MACHINES/MEALAY/mealay101ol_chatgpt.v>)
			4. [10010 overlap](<behavvvioural/FINITE STATE MACHINES/MEALAY/mealay_10010_overlap.v>)
			5. [10x10 overlap](behavvvioural/FINITE STATE MACHINES/MEALAY/mealay_10x10_overlap.v)
	2. MOORE
		1. [1001 overlap](<behavvvioural/FINITE STATE MACHINES/MOORE/MOORE_1001_nonoverlap.v>)
		2. [1001 non overlap](<behavvvioural/FINITE STATE MACHINES/MOORE/MOORE_1001_nonoverlap.v>)
		3. [1x01 overlap](<behavvvioural/FINITE STATE MACHINES/MOORE/moore_1x01_overlap.v>)
9. combinational
	1. [decoder2x4](behavvvioural/COMBINATIONAL/Decoder2x4/decoder2x4.v)
	2. [mux 2x1 using if](<behavvvioural/COMBINATIONAL/muxNx1/mux2x1_using_if.v>)
	3. [Mux 4x1](<behavvvioural/COMBINATIONAL/muxNx1/mux4x1.v>) [mux 4x1 2](<behavioural_modelling/mux4x1/mux4x1.v>)
	4. [mux Nx1](behavvvioural/COMBINATIONAL/muxNx1/muxNx1.v)
	5. [encoder 4x2](<behavioural_modelling/encoder4x2/encoder4x2.v>)
	6. [priority encoder](<behavioural_modelling/priority_encoder4x2/priorityencoder4x2.v>)
	7. [4bit RCA](<behavioural_modelling/fa_4bitrca/fa_4bitrca.v>)
	8. [full subtractor](<behavioural_modelling/full_subtractor/fullsub.v>)
	9. 
10. block non blocking stmnts 
	1. [blk non block](behavvvioural/block-nonblock_interview/blc-nonblk.v)
	2. [checking execution b/w blking and non blocking](<behavvvioural/block-nonblock_interview/interview_ques1.v>)
	3. [Mux sel lines as input,reg,real,wire](behavvvioural/block-nonblock_interview/mux_selectionlines_as_input,real,reg,wire.v)
	4. [swapping two vars using non-blocking stmnts](<behavvvioural/block-nonblock_interview/swap_two_var.v>)
	5. [swaping using blocking and non blocking](<behavvvioural/block-nonblock_interview/swap_two1.v>)
	6. [swapping of vector variables uning xor](<behavvvioural/block-nonblock_interview/swapp_var_vector.v>)
11. [Array sorting](<behavvvioural/array_sorting/Ascendingly_sort.v>)
12. Counters
	1. [Mod 16 counter](<behavioural_modelling/modncounter/mod16counter.v>)
	2. [ring counter](<behavioural_modelling/ring_counter/ring_counter.v>)
	3. [ripple up counter 2 bit](<behavioural_modelling/ripple-up_counter/ripple_up_count_2bit.v>)
	4. 
13. [designing ALU 8 bit](<behavvvioural/ALU_normal/ALU_8bit.v>)
# Dataflow_model
1. [carry look ahead adder](<dataflow/carry_look_ahead_adder/dut_carry_look_ahead_adder_4bit.v>) [TB](<dataflow/carry_look_ahead_adder/tb_carry_look_ahead_adder_4bit.v>)
2. comparator
	1. [1bit](<dataflow/comparator/dut_comparator_1bit.v>)
	2. [3bit](<dataflow/comparator/dut_comparator_3bit.v>)
	3. [4bit](<dataflow/comparator/dut_comparator_4bit.v>)
	4. [4bit using 2bit comparator](<dataflow/comparator/dut_comp_4bit_u_2bit.v>)
3. [decoder 2to4 ](<dataflow/decoder/decoder2to4.v>) - [TB](<dataflow/decoder/decoder2to4_tb.v>)
4. decoder by left shift
	1. [decoder 2to4 by left shift](<dataflow/decoder_by_leftshift/dut_decoder_2to4_by_shift.v>)
	2. [decoder 4to16 by left shift](<dataflow/decoder_by_leftshift/dut_decoder_2to4_by_shift.v>)
5. demux
	1. [demux 1 to 2](<dataflow/demux/demux1to2_dut.v>)
	2. [demux 1 to 4](<dataflow/demux/demux1to4_dut.v>)
6. encoder by conditional
	1. [encoder 4 to 2 using terenary operator](<dataflow/encoder_by_conditional/dut_encoder_4to2_by_shift.v>)
	2. [priority encoder 4 to2](<dataflow/encoder_by_conditional/dut_priorityencoder_4to2.v>)
	3. [encoder 4 to 2](<dataflow/encoders/encoder4to2.v>)
7. Adders
	1. [HA](<dataflow/half_adder/halfadder_dut.v>)
	2. [FA](<dataflow/full_adder/fa_dut.v>)
	3. [fa using ha](<dataflow/fa_using_ha/fa_using_ha_dut.v>)
	4. [fa using mux](<dataflow/fa_using_mux/fa_using_mux_dut.v>)
	5. [Ripple carry Adder](<dataflow/RCA/dut_rca_4bit.v>)
8. Subtractors
	1. [HS](<dataflow/half_subtractor/hs_dut.v>)
	2. [FS](<dataflow/half_subtractor/fs_dut.v>)
	3. [FS using HS](<dataflow/half_subtractor/fs_using_hs_dut.v>)
	4. [Mux as FS](<dataflow/number_conversions/mux_as_fs_dut.v>)
9. [FA FS using  MUX](<dataflow/fafs_using_mux/fafs_using_mux_dut.v>)
10. [FS using FA](<dataflow/fs_using_fa/fs_using_fa_dut.v>)
11. MUX
	1. [mux 2x1](<dataflow/mux/mux2x1_dut.v>)
	2. [mux 4x1 using terenary](<dataflow/mux/mux4x1_using_terinary_dut.v>)
	3. [mux 5x1 using 2x1](<dataflow/mux/mux5x1_using_2x1.v>)
	4. [mux 8x1](<dataflow/mux/mux8x1dut.v>)
	5. [mux 4x1 using vectors](<dataflow/mux_using_vectors/mux4x1_dut.v>)
	6. [mux 8x1 using 4x1](<dataflow/mux_using_vectors/mux8x1_using_2x1_dut.v>)
	7. [mux 16x1](<dataflow/mux_using_vectors/mux16x1_dut.v>)
	8. [mux 4x1 using 2x1 terenary](<dataflow/mux4x1_using_mux2x1/mux4x1_using_mux2x1_dut.v>)
	9. [mux 7x1 using 2x1](<dataflow/mux7x1using2x1/mux7x1using2x1_dut.v>)
12. Number Conversions
	1. Binary to Gray
		1. [3bit](<dataflow/number_conversions/binary_to_gray.v>)
		2. [4bit](<dataflow/number_conversions/binary_to_gray_4bit_dut.v>)
13. [All logic gates using MUX](<dataflow/number_conversions/logicgates_using_mux_dut.v>)
	
# Gate-Level-and-Structural-Mixed_Model
1. 
# Switch_level
1. 