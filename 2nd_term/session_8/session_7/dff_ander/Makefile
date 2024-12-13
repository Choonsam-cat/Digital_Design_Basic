clean:
	rm -rf xcelium.d *.log *.histoy *.key
	rm -rf worklib *.lib hdl.var
	rm -rf *.lib *.shm

set:
	mkdir ./worklib
	touch ./cds.lib
	chmod +x cds.lib
	echo "define dff_ander_lib ./worklib" >> cds.lib
	touch hdl.var
	chmod +x hdl.var
	echo "define WORK dff_ander_lib" >> hdl.var

compile:
	xmvlog -MESS -linedebug *.v

elab:
	xmelab -MESS -access rwc dff_ander
sim:
	xmsim -MESS dff_ander -gui

all: clean set compile elab sim
