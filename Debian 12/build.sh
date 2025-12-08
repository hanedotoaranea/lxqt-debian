lb config -d bookworm \
          --debian-installer live \
          --debian-installer-distribution bookworm \
          --debian-installer-gui true \
          --archive-areas "main contrib non-free" \
          --debootstrap-options "--variant=minbase" \
          --architectures amd64 \
          --iso-volume "Alice_$(date +%Y%m%d)" \  
          --archive-areas "main contrib non-free non-free-firmware" \
          --debootstrap-options "--variant=standard --include=sudo,locales,keyboard-configuration" \
          --iso-publisher "hanedotoaranea - https://github.com/hanedotoaranea" \
          --iso-application "GitHub:https://github.com/hanedotoaranea/" \
          --checksums sha256 \
          --mirror-bootstrap http://deb.debian.org/debian \
          --mirror-binary http://deb.debian.org/debian \
          --mirror-binary-security http://security.debian.org/debian-security \
          --win32-loader false \
          --apt-recommends true \
          --security true \
          --zsync true \
          --updates true \              
          --bootloader-timeout 5 \   
          --hdd-label "ALICE_OS" \
          --color \

sudo lb build
