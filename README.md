# OS-001
This is toy OS for learning. OS-001 uses [poiboot](https://github.com/cupnes/x86_64_jisaku_os_samples/tree/master/A01_poiboot) to boot up OS from UEFI.

## Prerequirement
1. install `qemu-system-x86_64`, `gcc`
2. download [poiboot](https://github.com/cupnes/x86_64_jisaku_os_samples/tree/master/A01_poiboot)

## Bootup
```
mkdir -p fs/EFI/BOOT
cp poiboot/poiboot.efi fs/EFI/BOOT/BOOTX64.EFI
cp poiboot/poiboot.conf fs/poiboot.conf
make run # Bootup OS-001!
```
