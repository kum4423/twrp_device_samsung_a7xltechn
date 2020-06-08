# Get your device's block path where "system", "recovery", etc. lives.
# That can be "/dev/block/bootdevice/by-name" or something like that.
mkdir -p /dev/block/platform/7824900.sdhci/by-name/
busybox mount -o bind /dev/block/platform/7824900.sdhci/by-name/ /dev/block/platform/7824900.sdhci/by-name/
