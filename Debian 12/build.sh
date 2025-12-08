lb config \
  --distribution bookworm \
  --architectures amd64 \
  --binary-images iso-hybrid \
  --mode debian-cd \
  --iso-volume "Alice_Full_DVD_$(date +%Y%m%d)" \
  --archive-areas "main contrib non-free non-free-firmware" \
  --debian-installer true \
  --debian-installer-gui false \
  --mirror-bootstrap http://deb.debian.org/debian \
  --mirror-binary http://deb.debian.org/debian \
  --mirror-binary-security http://security.debian.org/debian-security \
  --hdd-label "ALICE_OS" \
  --bootloader syslinux \
  --memtest none \
  --win32-loader false \
  --cache-packages true \
  --apt-indices false \
  --checksums sha256 \
  
sudo lb build
