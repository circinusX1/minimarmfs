cmd_/home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/dvb/.install := perl scripts/headers_install.pl /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/rpm/BUILD/linux-3.0.35/include/linux/dvb /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/dvb arm audio.h ca.h dmx.h frontend.h net.h osd.h version.h video.h; perl scripts/headers_install.pl /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/rpm/BUILD/linux-3.0.35/include/linux/dvb /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/dvb arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/dvb/$$F; done; touch /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/dvb/.install
