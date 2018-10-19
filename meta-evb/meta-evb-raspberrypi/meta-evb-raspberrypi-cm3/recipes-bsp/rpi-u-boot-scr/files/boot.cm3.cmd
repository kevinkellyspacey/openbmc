echo "Current dtb: $fdtfile"
setenv fdtfile @@FDT_FILE@@
echo "dtb redefined: $fdtfile"
fatload mmc 0:1 ${kernel_addr_r} @@KERNEL_IMAGETYPE@@
fatload mmc 0:1 0x2000000 $fdtfile
setenv bootargs earlyprintk console=ttyAMA0 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait
@@KERNEL_BOOTCMD@@ ${kernel_addr_r} - 0x2000000
