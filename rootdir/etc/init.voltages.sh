#!/bin/bash
base_voltages=(800 810 820 820 820 820 830 830 850 875 880 900 940 980 1040 1070 1120 1160 1200)

psv=$(cat /sys/devices/system/soc/soc0/pvs_bin)

voltages_corrected=""

ITER=36

for i in "${base_voltages[@]}"; do
    let ITER=${ITER}-2
    i=$(( $i - $(( $psv * 5)) - $ITER ));
    voltages_corrected="$voltages_corrected $i"
done

while [ ! -f /sdcard/Losos/settings.conf ]; do
        sleep 1
done

if grep -Fxq "undervolt" /sdcard/Losos/settings.conf
then
  echo $voltages_corrected > /sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table
fi


#default clock

MAX_FREQ=2457600
GOV="zzmoove"

# apply OC settings here
if grep -Fxq "overclock" /sdcard/Losos/settings.conf
then
  MAX_FREQ=2726400
fi

#if powersave set MAX_FREQ to 1,5Ghz
if grep -Fxq "powersave" /sdcard/Losos/settings.conf
then
  MAX_FREQ=1497600
  GOV="powersave"
fi

echo 0 > /sys/module/msm_thermal/core_control/enabled

echo $MAX_FREQ > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo $GOV > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1 > /sys/devices/system/cpu/cpu1/online
echo $MAX_FREQ > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
echo $GOV > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo 1 > /sys/devices/system/cpu/cpu2/online
echo $MAX_FREQ > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
echo $GOV > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
echo 1 > /sys/devices/system/cpu/cpu3/online
echo $MAX_FREQ > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
echo $GOV > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
#apply input_boost_freq

echo 1036800 > /sys/module/cpu_boost/parameters/input_boost_freq

