# „A portable module for performing Man-In-The-Middle attacks” #

It's my engineering thesis project in which I automate my RaspberryPI to harvesting credentials from open WLANs.
It can harvest from HTTP POSTs and from HTTPS(didn't work with banks and other strongly protected websites).

RaspberryPI should be cable free:
  -configuration via SSH
  -power supply from powerbank(20000MAh can be enough for 1 day of harvesting)

Most of scripts have not been code optimized yet.
On master branch is bettercap v1.6.2 - very old one, still works, but easy to detect and slow down network to death.

Choose targets
To choose targets you need to edit file hstshijack.cap by setting arp.spoof.targets.
