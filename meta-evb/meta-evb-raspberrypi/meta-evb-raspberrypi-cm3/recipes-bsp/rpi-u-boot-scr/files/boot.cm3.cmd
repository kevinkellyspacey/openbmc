fatload mmc 0:1 ${kernel_addr_r} @@KERNEL_IMAGETYPE@@
fatload mmc 0:1 0x2000000 bcm2710-rpi-cm3.dtb
setenv bootargs earlyprintk console=ttyAMA0 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait
@@KERNEL_BOOTCMD@@ ${kernel_addr_r} - 0x2000000
