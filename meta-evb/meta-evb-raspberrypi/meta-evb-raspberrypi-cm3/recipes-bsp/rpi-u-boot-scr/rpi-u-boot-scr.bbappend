FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://boot.cm3.cmd"

do_compile() {
    sed -e 's/@@KERNEL_IMAGETYPE@@/${KERNEL_IMAGETYPE}/' \
        -e 's/@@KERNEL_BOOTCMD@@/${KERNEL_BOOTCMD}/' \
        -e 's/@@FDT_FILE@@/${FDTFILE}/' \
        "${WORKDIR}/boot.cm3.cmd" > "${WORKDIR}/boot.cmd"
    mkimage -A arm -T script -C none -n "Boot script" -d "${WORKDIR}/boot.cmd" boot.scr
}
