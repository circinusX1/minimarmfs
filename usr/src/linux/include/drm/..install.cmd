cmd_/home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/drm/.install := perl scripts/headers_install.pl /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/rpm/BUILD/linux-3.0.35/include/drm /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/drm arm drm.h drm_mode.h drm_sarea.h i810_drm.h i915_drm.h mga_drm.h nouveau_drm.h r128_drm.h radeon_drm.h savage_drm.h sis_drm.h via_drm.h vmwgfx_drm.h; perl scripts/headers_install.pl /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/rpm/BUILD/linux-3.0.35/include/drm /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/drm arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/drm/$$F; done; touch /home/larry/Workspace/L3.0.35_4.1.0_130816_source/ltib/tmp/kernel//opt/freescale/rootfs/arm/usr/src/linux/include/drm/.install