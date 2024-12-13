clean:
	rm -rf cds.lib hdl.var *.lib waves.shm *.log *.ket

set:
	touch cds.lib hdl.var
	mkdir loop_counter.lib
	echo "define loop_counter_lib ./loop_counter.lib" >> ./cds.lib
	echo "define WORK loop_counter_lib" >> ./hdl.var

compile:
	xmvlog -MESS -linedebug ./*.v

elab:
	xmelab -MESS -access rwc loop_counter
	xmelab -MESS -access rwc tb_loop_counter

sim:
	xmsim -MESS tb_mux4x1_behav -gui

all: clean set compile elab sim
