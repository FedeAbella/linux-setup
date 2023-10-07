#!/bin/bash

os_id=$(grep ^ID= /etc/os-release | cut -d "=" -f2)

if [ "$os_id" = "fedora" ]; then
    # In Fedora Linux, set up rpmfusion repository for codecs (https://rpmfusion.org/Howto/Multimedia)
    sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-"$(rpm -E %fedora)".noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-"$(rpm -E %fedora)".noarch.rpm --assumeyes
    sudo dnf swap ffmpeg-free ffmpeg --allowerasing --assumeyes
    sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin --assumeyes
    sudo dnf groupupdate sound-and-video --assumeyes
fi