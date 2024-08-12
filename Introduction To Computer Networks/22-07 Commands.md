# Commands

## ipconfig/ifconfig(Linux)

Command gives us information about the connectivity of the machine.

```stdout
lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 19  bytes 2227 (2.1 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 19  bytes 2227 (2.1 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlp0s20f3: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.31.22.159  netmask 255.255.240.0  broadcast 172.31.31.255
        inet6 fe80::3403:9d68:6492:9455  prefixlen 64  scopeid 0x20<link>
        ether 8e:56:25:c3:bd:98  txqueuelen 1000  (Ethernet)
        RX packets 174163  bytes 31387646 (29.9 MiB)
        RX errors 0  dropped 9346  overruns 0  frame 0
        TX packets 12656  bytes 2211651 (2.1 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

The IPV4 address is `172.31.22.159` and `fe80::3403:9d68:6492:9455`.

Every IP address has two parts. The host and the network.

- ipv4 - 32bit
- ipv6 - 128bit
- subnet-mask - 32bit
The network component is `172.31`.

## Subnet Mask

It isolates the network component. Using binary.

## Default gateway

The default gateway is the 'door' for a network, it's an interface which facilitates the transfer of packets outside the network.

In Linux, can be accessed by:

```bash
ip r
```

## Ping

It is used to send a packet to test the network.

```bash
ping
```

It uses a protocol known as **ICMP(Internet Control Message Protocol)**.

>[!note] TTL means Time To Leave, which means hop count.
>It's the number of nodes the packet being sent passes through.

## nslookup

```sh
nslookup <website>
```

Returns the IP address of the website given, by requesting from the DNS server.

## traceroute/tracert

```sh
traceroote <website>
```

## netstat

```sh
netstat
```

returns active statistics about network`

## hostname

```sh
hostname
```

## ARP

Short for address resolution protocol.

It maintains a table with your IP address and your MAC address.

>[!note] You can get your MAC address using the `getmac` command.
