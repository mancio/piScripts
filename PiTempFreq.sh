echo "CPU frequency is:"
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
echo "temperature is:"
/opt/vc/bin/vcgencmd measure_temp
