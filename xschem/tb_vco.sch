v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -40 -160 -20 {lab=GND}
N -160 -120 -160 -100 {lab=VDD}
N -160 -40 -160 -20 {lab=GND}
N -60 -40 -60 -20 {lab=GND}
N -60 -40 -60 -20 {lab=GND}
N 40 -160 60 -160 {lab=VDD}
N 40 -180 40 -160 {lab=VDD}
N 40 -100 60 -100 {lab=GND}
N 40 -100 40 -80 {lab=GND}
N -60 -140 60 -140 {lab=#net1}
N -60 -140 -60 -100 {lab=#net1}
N 460 -20 460 -0 {lab=GND}
N 520 -20 520 0 {lab=GND}
N 580 -20 580 0 {lab=GND}
N 640 -20 640 0 {lab=GND}
N 360 -100 460 -100 {lab=out_ph270}
N 460 -100 460 -80 {lab=out_ph270}
N 360 -120 520 -120 {lab=out_ph180}
N 520 -120 520 -80 {lab=out_ph180}
N 360 -140 580 -140 {lab=out_ph90}
N 580 -140 580 -80 {lab=out_ph90}
N 360 -160 640 -160 {lab=out_ph0}
N 640 -160 640 -80 {lab=out_ph0}
C {devices/title.sym} -480 70 0 0 {name=l1 author="Sylvain Munaut"}
C {devices/code.sym} -510 -130 0 0 {name=SIMULATION
only_toplevel=false 
value="
.param mc_mm_switch=0

.control
  tran 10p 100n
  meas tran t_period trig v(out_ph0) val=1.65 rise=10 targ v(out_ph0) val=1.65 rise=11
  print 1 / t_period
.endc


.end
"}
C {devices/vsource.sym} -160 -70 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/code.sym} -370 -130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.include design.ngspice
.lib sm141064.ngspice typical
"
spice_ignore=false}
C {vdd_loc.sym} -160 -120 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -160 -20 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -60 -70 0 0 {name=V2 value=2.075 savecurrent=false}
C {devices/gnd.sym} -60 -20 0 0 {name=l30 lab=GND}
C {devices/lab_wire.sym} 360 -100 0 1 {name=p32 sig_type=std_logic lab=out_ph270
}
C {devices/lab_wire.sym} 360 -140 0 1 {name=p33 sig_type=std_logic lab=out_ph90
}
C {devices/lab_wire.sym} 360 -120 0 1 {name=p16 sig_type=std_logic lab=out_ph180
}
C {devices/lab_wire.sym} 360 -160 0 1 {name=p17 sig_type=std_logic lab=out_ph0
}
C {vco.sym} 210 -130 0 0 {name=x1}
C {devices/gnd.sym} 40 -80 0 0 {name=l4 lab=GND}
C {vdd_loc.sym} 40 -180 0 0 {name=l5 lab=VDD}
C {devices/capa.sym} 460 -50 0 0 {name=C1
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 460 0 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 520 -50 0 0 {name=C2
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 520 0 0 0 {name=l7 lab=GND}
C {devices/capa.sym} 580 -50 0 0 {name=C3
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 580 0 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 640 -50 0 0 {name=C4
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 640 0 0 0 {name=l9 lab=GND}
