lb config -d bullseye \
--debian-installer live \
--debian-installer-distribution bullseye \
--debian-installer-gui true \
--architectures amd64 \
--iso-volume "Alice_$(date +%Y%m%d)" \
--archive-areas "main contrib non-free" \
--debootstrap-options "--variant=standard" \
--hdd-label "ALICE_OS" \
--security true \
--zsync true \
--updates true \
--iso-publisher "hanedotoaranea - https://github.com/hanedotoaranea" \
--iso-application "GitHub:https://github.com/hanedotoaranea/" \
--checksums sha256 \
--mirror-bootstrap http://deb.debian.org/debian \
--mirror-binary http://deb.debian.org/debian \
--mirror-binary-security http://security.debian.org/debian-security \
--cache true \
--apt-recommends true \
--cache-packages true \

sudo lb build
