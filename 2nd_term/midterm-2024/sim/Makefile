clean:
	rm -rf xcelium.d *.log *.histoy *.key
	rm -rf worklib *.lib hdl.var
	rm -rf *.lib *.shm

set:
	mkdir ./worklib
	touch ./cds.lib
	chmod +x cds.lib
	echo "define SN54LS32_lib ./worklib" >> cds.lib
	touch hdl.var
	chmod +x hdl.var
	echo "define WORK SN54LS32_lib" >> hdl.var

compile:
	xmvlog -MESS -linedebug ../src/*.v

elab:
	xmelab -MESS -access rwc tb_sn54ls32

sim:
	xmsim -MESS tb_sn54ls32 -gui

all: clean set compile elab sim
