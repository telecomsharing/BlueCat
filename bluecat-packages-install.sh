#!/bin/bash
# Title           :bluecat-packages-install.sh
# Description     :This script will install BlueCat packages on Fedora.
# Author		  :Luis Sequeira
# Date            :11/05/2020
# Version         :2.2    
# Usage		      :./bluecat-packages-install.sh --games --repos  --remove --ns3
# ==============================================================================

while [ -n "$1" ]; do
    case "$1" in
        --games)
            echo "==========================="
            echo "BlueCat Games will be added"
            echo "==========================="
            GAMES=true
            ;;
        --repos)
            echo "==========================="
            echo "RPMFusion Free/Non-Free, PlayOnLinux and QOwnNotes repositories will be added"
            echo "==========================="
            REPOS=true
            ;;
        --remove)
            echo "==========================="
            echo "Calligra will be removed"
            echo "==========================="
            REMOVE=true
            ;;
        --ns3)
            echo "==========================="
            echo "NS3 will be added"
            echo "==========================="
            NS3=true
            ;;
        *)
            echo "==========================="
            echo "Option $1 not recognized"
            echo "==========================="
            ;;
    esac
    shift
done

echo "==========================="
echo "You may need to enter root password multiple times!"
echo "==========================="

sudo dnf clean all

if [ ! -z "$REPOS" ]; then
    echo "==========================="
    echo "Adding the following repositories:"
    echo "RPMFusion Free"
    echo "RPMFusion Free - Updates"
    echo "RPMFusion Non-Free"
    echo "RPMFusion Non-Free - Updates"
    echo "PlayOnLinux"
    echo "QOwnNotes"
    echo "==========================="

    # TODO: add repositories
    sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
    sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
fi

if [ ! -z "$REMOVE" ]; then
    echo "==========================="
    echo "Deleting Calligra"
    echo "==========================="

    sudo dnf remove -y \
        calligra*
fi

echo "==========================="
echo "Updating distro"
echo "==========================="

sudo dnf upgrade -y

echo "==========================="
echo "Installing BlueCat packages"
echo "==========================="

sudo dnf install -y \
    @libreoffice \
    libreoffice-writer2latex \
    keepassx \
    sigil \
    calibre \
    qownnotes \
    pdfmod \
    planner \
    dia \
    dia-CMOS \
    dia-electric2 \
    dia-Digital \
    dia-electronic \
    dia-optics \
    gimp \
    gimp-data-extras \
    inkscape \
    texmaker \
    texlive \
    texlive-biblatex \
    texlive-biblatex-ieee* \
    texlive-IEEE* \
    texlive-ieee* \
    texlive-multirow \
    texlive-subfigure \
    texlive-subfloat \
    kbibtex \
    octave \
    octave-audio \
    octave-communications \
    octave-general \
    octave-io \
    octave-optim \
    octave-specfun \
    octave-statistics \
    octave-doc \
    fig2ps \
    pstoedit \
    gnuplot \
    wireshark-qt \
    linsmith \
    ktechlab \
    @development-tools \
    @development-libs \
    kate \
    kdiff3 \
    eclipse \
    icedtea-web \
    dolphin-plugins \
    nextcloud-client \
    @virtualization \
    lxc \
    lxc-templates \
    lxc-extra \
    debootstrap \
    libvirt \
    perl \
    gpg \
    p7zip \
    wget \
    filelight \
    terminator \
    hplip \
    libsane-hpaio \
    mesa-vdpau-drivers \
    backintime-common \
    backintime-kde \
    gstreamer1-libav \
    gstreamer1-plugins-bad-free-extras \
    gstreamer1-plugins-bad-freeworld \
    gstreamer1-plugins-good-extras \
    gstreamer1-plugins-ugly \
    gstreamer-ffmpeg \
    xine-lib-extras \
    xine-lib-extras-freeworld \
    k3b-extras-freeworld \
    gstreamer-plugins-bad \
    gstreamer-plugins-bad-free-extras \
    gstreamer-plugins-bad-nonfree \
    gstreamer-plugins-ugly \
    gstreamer-ffmpeg \
    libdvdread \
    libdvdnav \
    vlc 

if [ ! -z "$NS3" ]; then
    echo "==========================="
    echo "Installinng NS3 3.30.1"
    echo "==========================="

    sudo dnf install -y \
        mercurial \
        gsl-devel \
        qt5-devel \
        valgrind \
        graphviz \
        ImageMagick \
        python-sphinx \
        texlive-fncychap \
        texlive-capt-of \
        texlive-tabulary \
        texlive-eqparbox \
        texlive-epstopdf \
        texlive-framed \
        texlive-dvipng \
        texlive-threeparttable \
        texlive-wrapfig \
        ImageMagick \
        flex \
        bison \
        sqlite-devel \
        uncrustify \
        openmpi \
        openmpi-devel \
        goocanvas-devel \
        graphviz-devel \
        python-kiwi \
        ipython \
        cmake \
        clang-devel \
        llvm-devel \
        llvm-static \
        cvs \
        pygobject2 \
        pygobject3-devel \
        gobject-introspection-devel \
        goocanvas2-devel 
    
    sudo easy_install pygraphviz
    sudo pip install cxxfilt
    git clone https://gitlab.com/nsnam/bake
    cd bake
    export BAKE_HOME=`pwd`/bake
    export PATH=$PATH:$BAKE_HOME
    export PYTHONPATH=$PYTHONPATH:$BAKE_HOME
    ./bake.py check
    ./bake.py configure -e ns-3.30.1
    ./bake.py deploy
    cd ..
fi

if [ ! -z "$GAMES" ]; then
    echo "==========================="
    echo "Installing BlueCat packages"
    echo "==========================="

    sudo dnf install -y \
        kdegames \
        playonlinux \
        steam \
        knights \
        freedoom \
        alienarena \
        warzone2100 \
        urbanterror \
        chromium-bsu \
        frozen-bubble \
        supertux \
        supertuxkart
fi

echo "==========================="
echo "Please Reboot"
echo "==========================="

exit 0