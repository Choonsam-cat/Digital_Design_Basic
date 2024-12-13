clean:
	rm -rf cds.lib hdl.var *.lib waves.shm *.log *.ket

set:
	touch cds.lib hdl.var
	mkdir ./clk_gating.lib
	echo "define clk_gating_lib ./clk_gating.lib" >> ./cds.lib
	echo "define WORK clk_gating_lib" >> ./hdl.var

compile:
	xmvlog -MESS -linedebug ./*.v

elab:
	xmelab -MESS -access rwc tb_clk_gating

sim:
	xmsim -MESS tb_clk_gating

all: clean set compile elab sim
