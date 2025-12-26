 lb config -d trixie \
          --debian-installer true \
          --debian-installer-gui true \
          --debootstrap-options "--variant=minbase" \
          --architectures amd64 \
          --iso-volume "Alice_$(date +%Y%m%d)" \
          --archive-areas "main contrib non-free non-free-firmware" \
          --hdd-label "ALICE_OS" \
          --security true \
          --zsync true \
          --updates true \
          --iso-publisher "hanedotoaranea - https://github.com/hanedotoaranea" \
          --iso-application "GitHub:https://github.com/hanedotoaranea/" \
          --checksums sha256 \
          --mirror-bootstrap http://deb.debian.org/debian \
          --mirror-binary http://deb.debian.org/debian \
          --mirror-binary-security http://security.debian.org/trixie-security \
          --win32-loader false \
          --cache true \
          --binary-images iso-hybrid \
          --firmware-binary true \
          --cache-packages true \
          --apt-recommends false \
          
sudo lb build
