clean:
	rm -rf xcelium.d *.log *.histoy *.key
	rm -rf worklib *.lib hdl.var
	rm -rf *.lib *.shm

set:
	mkdir ./worklib
	touch ./cds.lib
	chmod +x cds.lib
	echo "define tb_initial_lib ./worklib" >> cds.lib
	touch hdl.var
	chmod +x hdl.var
	echo "define WORK tb_initial_lib" >> hdl.var

compile:
	xmvlog -MESS -linedebug *.v

elab:
	xmelab -MESS -access rwc tb_initial

sim:
	xmsim -MESS tb_initial -gui

all: clean set compile elab sim
