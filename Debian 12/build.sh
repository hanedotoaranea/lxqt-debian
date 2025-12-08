lb config -d bookworm \
          --architectures amd64 \
          --binary-images iso \
          --mode debian \
          --distribution bookworm \
          --iso-volume "Alice_$(date +%Y%m%d)" \
          --archive-areas "main contrib non-free non-free-firmware" \
          --debian-installer true \
          --debian-installer-gui true \
          --mirror-bootstrap http://deb.debian.org/debian \
          --mirror-binary http://deb.debian.org/debian \
          --mirror-binary-security http://security.debian.org/debian-security \
          --apt-recommends true \
          --security true \
          --updates true \
          --hdd-label "ALICE_OS" 
          
sudo lb build
