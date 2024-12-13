
compile:
	xmvlog -MESS -linedebug ./*.v

elab:
	xmelab -MESS -access rwc tb_SN74LS11

sim:
	xmsim tb_SN74LS11 -gui

all : compile elab sim
