cmd_/home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/raid/.install := perl scripts/headers_install.pl /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/rpm/BUILD/linux-3.0.35/include/linux/raid /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/raid arm md_p.h md_u.h; perl scripts/headers_install.pl /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/rpm/BUILD/linux-3.0.35/include/linux/raid /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/raid arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/raid/$$F; done; touch /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/linux/raid/.install