#!/bin/bash

cd /home/kirill/logisim_evolution_workspace/Robot_Dance_FSM/Dance/scripts
echo "create project"
vivado -mode tcl -source vivadoCreateProject.tcl 
echo "creation done"
echo "generate bitstream"
vivado -mode tcl -source vivadoGenerateBitStream.tcl
echo "bitstream generated"
exit
