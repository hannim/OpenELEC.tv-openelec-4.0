#!/bin/sh

if [ "`lsmod|grep nuvoton-cir|wc -l`" -gt "0" ]; then
modprobe -r nuvoton-cir
echo "auto" > "/sys/bus/acpi/devices/NTN0530\:00/physical_node/resources"
modprobe nuvoton-cir
fi
