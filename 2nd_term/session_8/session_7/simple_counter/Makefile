clean:
	rm -rf cds.lib hdl.var *.lib waves.shm *.log *.ket

set:
	touch cds.lib hdl.var
	mkdir tb_counter.lib
	echo "define tb_counter_lib ./tb_counter.lib" >> ./cds.lib
	echo "define WORK tb_counter_lib" >> ./hdl.var

compile:
	xmvlog -MESS -linedebug ./*.v

elab:
	xmelab -MESS -access rwc tb_counter
	xmelab -MESS -access rwc tb_counter
sim:
	xmsim -MESS tb_counter -gui

all: clean set compile elab sim
