cmd_/home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/asm/.install := perl scripts/headers_install.pl /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/rpm/BUILD/linux-3.0.35/arch/arm/include/asm /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/asm arm a.out.h auxvec.h bitsperlong.h byteorder.h errno.h fcntl.h hwcap.h ioctl.h ioctls.h ipcbuf.h mman.h msgbuf.h param.h poll.h posix_types.h ptrace.h resource.h sembuf.h setup.h shmbuf.h sigcontext.h siginfo.h signal.h socket.h sockios.h stat.h statfs.h swab.h termbits.h termios.h types.h unistd.h; perl scripts/headers_install.pl /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/rpm/BUILD/linux-3.0.35/arch/arm/include/asm /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/asm arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/asm/$$F; done; touch /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/asm/.install