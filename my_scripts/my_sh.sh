#!/bin/bash

echo "copy to server"
scp -r ./Robot_Dance_FSM/ kirill@10.136.125.13:/home/kirill/logisim_evolution_workspace

echo "connection to server"
ssh kirill@10.136.125.13 'bash -s' < my_shh.sh
echo "copy from server"
mkdir -p /home/kirill/logisim_evolution_workspace/Robot_Dance_FSM/Dance/sandbox/vp/vp.runs/impl_1/
scp -r kirill@10.136.125.13:/home/kirill/logisim_evolution_workspace/Robot_Dance_FSM/Dance/sandbox/vp/vp.runs/impl_1/logisimTopLevelShell.bit /home/kirill/logisim_evolution_workspace/Robot_Dance_FSM/Dance/sandbox/vp/vp.runs/impl_1/
echo "copy done"
# echo "load bitstream"
# vivado -mode tcl -source /home/kirill/logisim_evolution_workspace/Robot_Dance_FSM/Dance/scripts/vivadoLoadBitStream.tcl
# echo "bitstream loaded"
