clean:
	rm -rf xcelium.d *.log *.histoy *.key
	rm -rf worklib *.lib hdl.var
	rm -rf *.lib *.shm

set:
	mkdir ./worklib
	touch ./cds.lib
	chmod +x cds.lib
	echo "define clock_gen_lib ./worklib" >> cds.lib
	touch hdl.var
	chmod +x hdl.var
	echo "define WORK clock_gen_lib" >> hdl.var

compile:
	xmvlog -MESS -linedebug *.v

elab:
	xmelab -MESS -access rwc clock_gen

sim:
	xmsim -MESS clock_gen -gui

all: clean set compile elab sim
