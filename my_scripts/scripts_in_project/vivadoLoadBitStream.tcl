open_hw
connect_hw_server
open_hw_target
set_property PROGRAM.FILE {/home/kirill/logisim_evolution_workspace/Robot_Dance_FSM/Dance/sandbox//vp/vp.runs/impl_1/logisimTopLevelShell.bit} [lindex [get_hw_devices] 0]
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
program_hw_device [lindex [get_hw_devices] 0]
close_hw
exit
