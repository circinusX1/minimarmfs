cmd_/home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/wimax/.install := perl scripts/headers_install.pl /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/rpm/BUILD/linux-3.0.35/include/linux/wimax /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/wimax arm i2400m.h; perl scripts/headers_install.pl /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/rpm/BUILD/linux-3.0.35/include/linux/wimax /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/wimax arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/wimax/$$F; done; touch /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/wimax/.install