
compile:
	xmvlog -MESS -linedebug ./*.v

elab:
	xmelab -MESS -access rwc tb_MUX4X1

sim:
	xmsim tb_MUX4X1

all : compile elab sim
