#vbad
tc qdisc add dev eth0 root netem rate 100Mbit delay 1000ms
tc qdisc add dev ifb0 root netem rate 100Mbit delay 1000ms
onionperf measure --inet-only --torclient-conf-file /root/torrc1 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-meek-vbad
onionperf measure --inet-only --torclient-conf-file /root/torrc2 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-obfs-vbad
tc qdisc del dev eth0 root netem rate 100Mbit delay 1000ms
tc qdisc del dev ifb0 root netem rate 100Mbit delay 1000ms
#wifi
tc qdisc add dev eth0 root netem rate 33Mbit delay 1ms
tc qdisc add dev ifb0 root netem rate 40Mbit delay 1ms
onionperf measure --inet-only --torclient-conf-file /root/torrc1 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-meek-wifi
onionperf measure --inet-only --torclient-conf-file /root/torrc2 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-obfs-wifi
tc qdisc del dev eth0 root netem rate 33Mbit delay 1ms
tc qdisc del dev ifb0 root netem rate 40Mbit delay 1ms
#dsl
tc qdisc add dev eth0 root netem rate 256Kbit delay 5ms
tc qdisc add dev ifb0 root netem rate 2Mbit delay 5ms
onionperf measure --inet-only --torclient-conf-file /root/torrc1 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-meek-dsl
onionperf measure --inet-only --torclient-conf-file /root/torrc2 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-obfs-dsl
tc qdisc del dev eth0 root netem rate 256Kbit delay 5ms
tc qdisc del dev ifb0 root netem rate 2Mbit delay 5ms
#lte
tc qdisc add dev eth0 root netem rate 10Mbit delay 65ms
tc qdisc add dev ifb0 root netem rate 50Mbit delay 50ms
onionperf measure --inet-only --torclient-conf-file /root/torrc1 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-meek-lte
onionperf measure --inet-only --torclient-conf-file /root/torrc2 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-obfs-lte
tc qdisc del dev eth0 root netem rate 10Mbit delay 65ms
tc qdisc del dev ifb0 root netem rate 50Mbit delay 50ms
#3g
tc qdisc add dev eth0 root netem rate 330Kbit delay 100ms
tc qdisc add dev ifb0 root netem rate 780Kbit delay 100ms
onionperf measure --inet-only --torclient-conf-file /root/torrc1 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-meek-3G
onionperf measure --inet-only --torclient-conf-file /root/torrc2 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-obfs-3G
tc qdisc del dev eth0 root netem rate 330Kbit delay 100ms
tc qdisc del dev ifb0 root netem rate 780Kbit delay 100ms
#edge
tc qdisc add dev eth0 root netem rate 200Kbit delay 440ms
tc qdisc add dev ifb0 root netem rate 240Kbit delay 400ms
onionperf measure --inet-only --torclient-conf-file /root/torrc1 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-meek-edge
onionperf measure --inet-only --torclient-conf-file /root/torrc2 --oneshot
mv onionperf-data UoA-simulations-netem/onionperf-data-obfs-3G
tc qdisc del dev eth0 root netem rate 200Kbit delay 440ms
tc qdisc del dev ifb0 root netem rate 240Kbit delay 400ms
