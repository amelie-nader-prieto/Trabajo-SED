
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:072

00:00:082	
486.8482	
200.340Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/utils_1/imports/synth_1/devolver_el_dinero.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2~
|C:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/utils_1/imports/synth_1/devolver_el_dinero.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
_
Command: %s
53*	vivadotcl2.
,synth_design -top top -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a100tcsg324-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
11424Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1362.188 ; gain = 449.270
h px� 
�
synthesizing module '%s'638*oasys2
top2g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/top.vhd2
198@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
tratamiento_entradas2v
tC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/tratamiento_entradas.vhd2
62
Inst_tratamiento_entradas2
tratamiento_entradas2g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/top.vhd2
778@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
tratamiento_entradas2x
tC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/tratamiento_entradas.vhd2
198@Z8-638h px� 
D
%s
*synth2,
*	Parameter N bound to: 3 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
boton_reset2m
kC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/boton_reset.vhd2
52
Inst_boton_reset2
boton_reset2x
tC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/tratamiento_entradas.vhd2
488@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
boton_reset2o
kC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/boton_reset.vhd2
138@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	SYNCHRNZR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/SYNCHRNZR.vhd2
32
Inst_SYNCHRNZR2
	SYNCHRNZR2o
kC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/boton_reset.vhd2
368@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	SYNCHRNZR2m
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/SYNCHRNZR.vhd2
108@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	SYNCHRNZR2
02
12m
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/SYNCHRNZR.vhd2
108@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/edgedtctr.vhd2
32
Inst_EDGEDTCTR2
	EDGEDTCTR2o
kC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/boton_reset.vhd2
428@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	EDGEDTCTR2m
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/edgedtctr.vhd2
118@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	EDGEDTCTR2
02
12m
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/edgedtctr.vhd2
118@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
boton_reset2
02
12o
kC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/boton_reset.vhd2
138@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

pulsadores2l
jC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/pulsadores.vhd2
52
Inst_pulsadores2

pulsadores2x
tC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/tratamiento_entradas.vhd2
568@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

pulsadores2n
jC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/pulsadores.vhd2
138@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	SYNCHRNZR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/SYNCHRNZR.vhd2
32
Inst_SYNCHRNZR_12
	SYNCHRNZR2n
jC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/pulsadores.vhd2
368@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	SYNCHRNZR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/SYNCHRNZR.vhd2
32
Inst_SYNCHRNZR_22
	SYNCHRNZR2n
jC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/pulsadores.vhd2
418@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/edgedtctr.vhd2
32
Inst_EDGEDTCTR_12
	EDGEDTCTR2n
jC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/pulsadores.vhd2
478@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/edgedtctr.vhd2
32
Inst_EDGEDTCTR_22
	EDGEDTCTR2n
jC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/pulsadores.vhd2
538@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

pulsadores2
02
12n
jC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/pulsadores.vhd2
138@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
interruptores2o
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
42
Inst_interruptores2
interruptores2x
tC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/tratamiento_entradas.vhd2
648@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
interruptores2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
128@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	SYNCHRNZR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/SYNCHRNZR.vhd2
32
Inst_SYNCHRNZR_32
	SYNCHRNZR2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
338@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	SYNCHRNZR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/SYNCHRNZR.vhd2
32
Inst_SYNCHRNZR_22
	SYNCHRNZR2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
388@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	SYNCHRNZR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/SYNCHRNZR.vhd2
32
Inst_SYNCHRNZR_12
	SYNCHRNZR2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
438@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	SYNCHRNZR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/SYNCHRNZR.vhd2
32
Inst_SYNCHRNZR_02
	SYNCHRNZR2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
488@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/edgedtctr.vhd2
32
Inst_EDGEDTCTR_32
	EDGEDTCTR2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
548@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/edgedtctr.vhd2
32
Inst_EDGEDTCTR_22
	EDGEDTCTR2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
598@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/edgedtctr.vhd2
32
Inst_EDGEDTCTR_12
	EDGEDTCTR2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
648@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2k
iC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/edgedtctr.vhd2
32
Inst_EDGEDTCTR_02
	EDGEDTCTR2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
698@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
interruptores2
02
12q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/interruptores.vhd2
128@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
tratamiento_entradas2
02
12x
tC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/tratamiento_entradas.vhd2
198@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
control_display2y
wC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/control_display.vhd2
52
Inst_control_display2
control_display2g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/top.vhd2
878@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
control_display2{
wC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/control_display.vhd2
168@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

entero_bcd2t
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/entero_bcd.vhd2
52
Inst_entero_bcd2

entero_bcd2{
wC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/control_display.vhd2
438@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

entero_bcd2v
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/entero_bcd.vhd2
128@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

entero_bcd2
02
12v
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/entero_bcd.vhd2
128@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
display2q
oC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/display.vhd2
52
Inst_display2	
display2{
wC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/control_display.vhd2
508@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2	
display2s
oC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/display.vhd2
158@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
cuenta2s
oC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/display.vhd2
408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
valor_moneda2s
oC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/display.vhd2
408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
valor_moneda2s
oC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/display.vhd2
548@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
display2
02
12s
oC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/display.vhd2
158@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
control_display2
02
12{
wC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/control_display.vhd2
168@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
FSM2e
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM.vhd2
52

Inst_FSM2
FSM2g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/top.vhd2
948@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
FSM2g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM.vhd2
178@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
FSM_principal2o
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM_principal.vhd2
52

FSM_Master2
FSM_principal2g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM.vhd2
498@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
FSM_principal2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM_principal.vhd2
198@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
RESET2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM_principal.vhd2
1548@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
producto_seleccionado2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM_principal.vhd2
1548@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2	
importe2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM_principal.vhd2
1548@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2	
importe2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM_principal.vhd2
2078@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
precio2q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM_principal.vhd2
2078@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
FSM_principal2
02
12q
mC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM_principal.vhd2
198@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
devolver_el_dinero2t
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/devolver_el_dinero.vhd2
52
	FSM_Slave2
devolver_el_dinero2g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM.vhd2
628@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
devolver_el_dinero2v
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/devolver_el_dinero.vhd2
148@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
enable2v
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/devolver_el_dinero.vhd2
538@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
tiempo_terminado2v
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/devolver_el_dinero.vhd2
538@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
dinero_restante2v
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/devolver_el_dinero.vhd2
688@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

cantidad2v
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/devolver_el_dinero.vhd2
908@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
dinero_restante2v
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/devolver_el_dinero.vhd2
908@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
devolver_el_dinero2
02
12v
rC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/devolver_el_dinero.vhd2
148@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
FSM2
02
12g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/FSM.vhd2
178@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
CONTADOR_DE_MONEDAS2u
sC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/CONTADOR_DE_MONEDAS.vhd2
32
Inst_CONTADOR_DE_MONEDAS2
CONTADOR_DE_MONEDAS2g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/top.vhd2
1068@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
CONTADOR_DE_MONEDAS2w
sC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/CONTADOR_DE_MONEDAS.vhd2
128@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
decodificador_moneda2v
tC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/decodificador_moneda.vhd2
142
Inst_decodificador_moneda2
decodificador_moneda2w
sC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/CONTADOR_DE_MONEDAS.vhd2
358@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
decodificador_moneda2x
tC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/decodificador_moneda.vhd2
198@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
decodificador_moneda2
02
12x
tC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/decodificador_moneda.vhd2
198@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
sumadordemonedas2s
qC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/contadordemonedas.vhd2
52
Inst_sumadordemonedas2
sumadordemonedas2w
sC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/CONTADOR_DE_MONEDAS.vhd2
408@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
sumadordemonedas2u
qC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/contadordemonedas.vhd2
138@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
enable2u
qC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/contadordemonedas.vhd2
168@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
sumadordemonedas2
02
12u
qC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/contadordemonedas.vhd2
138@Z8-256h px� 
�
Oport width mismatch for port '%s': port width = %s, actual width = %s (integer)4787*oasys2
cuenta2
82
72w
sC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/CONTADOR_DE_MONEDAS.vhd2
458@Z8-7043h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
CONTADOR_DE_MONEDAS2
02
12w
sC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/CONTADOR_DE_MONEDAS.vhd2
128@Z8-256h px� 
�
Oport width mismatch for port '%s': port width = %s, actual width = %s (integer)4787*oasys2
total2
72
322g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/top.vhd2
1128@Z8-7043h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
top2
02
12g
cC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/new/top.vhd2
198@Z8-256h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1475.391 ; gain = 562.473
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1475.391 ; gain = 562.473
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1475.391 ; gain = 562.473
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0082

1475.3912
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
�C:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/constrs_1/imports/Downloads/Nexys-4-DDR-Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/constrs_1/imports/Downloads/Nexys-4-DDR-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�C:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/constrs_1/imports/Downloads/Nexys-4-DDR-Master.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1578.5622
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0052

1578.5622
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
y
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
FSM_principalZ8-802h px� 
�
!inferring latch for variable '%s'327*oasys2

digsel_reg2s
oC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/display.vhd2
458@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

muetra_reg2s
oC:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.srcs/sources_1/imports/new/display.vhd2
588@Z8-327h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  reposo |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_      recibiendo_monedas |                              101 |                              001
h p
x
� 
y
%s
*synth2a
_     operacion_cancelada |                              011 |                              100
h p
x
� 
y
%s
*synth2a
_     entregando_producto |                              100 |                              011
h p
x
� 
y
%s
*synth2a
_      producto_entregado |                              001 |                              101
h p
x
� 
y
%s
*synth2a
_   devolviendo_el_dinero |                              010 |                              010
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2

sequential2
FSM_principalZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 9     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 7     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 10    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   3 Input   15 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
/Inst_control_display/Inst_display/digsel_reg[7]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
/Inst_control_display/Inst_display/digsel_reg[6]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
/Inst_control_display/Inst_display/digsel_reg[5]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
/Inst_control_display/Inst_display/digsel_reg[4]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
/Inst_control_display/Inst_display/digsel_reg[3]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
/Inst_control_display/Inst_display/digsel_reg[2]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
/Inst_control_display/Inst_display/digsel_reg[1]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
/Inst_control_display/Inst_display/digsel_reg[0]2
topZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+------------+---------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name | RTL Name                                                                  | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+------------+---------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|top         | Inst_tratamiento_entradas/Inst_boton_reset/Inst_EDGEDTCTR/sreg_reg[0]     | 4      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|top         | Inst_tratamiento_entradas/Inst_pulsadores/Inst_EDGEDTCTR_1/sreg_reg[0]    | 4      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|top         | Inst_tratamiento_entradas/Inst_pulsadores/Inst_EDGEDTCTR_2/sreg_reg[0]    | 4      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|top         | Inst_tratamiento_entradas/Inst_interruptores/Inst_EDGEDTCTR_3/sreg_reg[0] | 4      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|top         | Inst_tratamiento_entradas/Inst_interruptores/Inst_EDGEDTCTR_2/sreg_reg[0] | 4      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|top         | Inst_tratamiento_entradas/Inst_interruptores/Inst_EDGEDTCTR_1/sreg_reg[0] | 4      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|top         | Inst_tratamiento_entradas/Inst_interruptores/Inst_EDGEDTCTR_0/sreg_reg[0] | 4      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+------------+---------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |    63|
h px� 
2
%s*synth2
|3     |LUT1   |     5|
h px� 
2
%s*synth2
|4     |LUT2   |   222|
h px� 
2
%s*synth2
|5     |LUT3   |    64|
h px� 
2
%s*synth2
|6     |LUT4   |    41|
h px� 
2
%s*synth2
|7     |LUT5   |    85|
h px� 
2
%s*synth2
|8     |LUT6   |    49|
h px� 
2
%s*synth2
|9     |SRL16E |     7|
h px� 
2
%s*synth2
|10    |FDCE   |    53|
h px� 
2
%s*synth2
|11    |FDPE   |    47|
h px� 
2
%s*synth2
|12    |FDRE   |   184|
h px� 
2
%s*synth2
|13    |LD     |     5|
h px� 
2
%s*synth2
|14    |LDC    |    22|
h px� 
2
%s*synth2
|15    |IBUF   |     8|
h px� 
2
%s*synth2
|16    |OBUF   |    22|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1578.562 ; gain = 665.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 11 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:00:32 . Memory (MB): peak = 1578.562 ; gain = 562.473
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1578.562 ; gain = 665.645
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0102

1578.5622
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
90Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1578.5622
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2d
b  A total of 27 instances were transformed.
  LD => LDCE: 5 instances
  LDC => LDCE: 22 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

70a1466fZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
832
272
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:392

00:00:422

1578.5622

1081.375Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0032

1578.5622
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2_
]C:/Users/sergi/Downloads/SED/Lab/Lab_sed/Trabajo/Trabajo_SED/Trabajo_SED.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri Jan 24 21:41:12 2025Z17-206h px� 


End Record