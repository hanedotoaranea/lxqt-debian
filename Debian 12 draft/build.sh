  lb config -d bookworm \
          --debian-installer live \
          --debian-installer-distribution bookworm \
          --debian-installer-gui true \
          --iso-volume "Alice_Full_DVD_$(date +%Y%m%d)" \
          --archive-areas "main contrib non-free" \
          --debootstrap-options "--variant=minbase" \
sudo lb build
