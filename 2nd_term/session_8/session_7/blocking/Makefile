clean:
	rm -rf cds.lib hdl.var *.lib waves.shm *.log *.key

set:
	touch cds.lib hdl.var
	mkdir ./non_blocking.lib
	echo "define non_blocking_lib ./non_blocking.lib" >> ./cds.lib
	echo "define WORK non_blocking_lib" >> ./hdl.var

compile:
	xmvlog -MESS -linedebug ./*.v

elab:
	xmelab -MESS -access rwc non_blocking

sim:
	xmsim -MESS non_blocking

all: clean set compile elab sim
