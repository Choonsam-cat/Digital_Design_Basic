clean:
	rm -rf cds.lib hdl.var *.lib waves.shm *.log *.ket

set:
	touch cds.lib hdl.var
	mkdir register.lib
	echo "define register_lib ./register.lib" >> ./cds.lib
	echo "define WORK register_lib" >> ./hdl.var

compile:
	xmvlog -MESS -linedebug ./*.v

elab:
	xmelab -MESS -access rwc register
	xmelab -MESS -access rwc tb_register

sim:
	xmsim -MESS tb_register -gui

all: clean set compile elab sim
