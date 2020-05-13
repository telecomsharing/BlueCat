# bluecat-packages.ks
#
# Description:
# - Packages for BlueCat with the K Desktop Environment (KDE)
#
# Maintainer(s):
# - Luis Sequeira <sequeira@telecomsharing.com>

%packages

# Office
@libreoffice
libreoffice-writer2latex
# parley # drop?
keepassx
sigil
calibre
# tomboy
qownnotes
pdfmod
# planner # not yet in f32
dia
dia-CMOS
dia-electric2
dia-Digital
dia-electronic
dia-optics
gimp
gimp-data-extras
inkscape

# Science
texmaker # now it icludes texlive dependencies
texlive
# texlive-latex # included in @development-tools
texlive-biblatex
texlive-biblatex-ieee*
texlive-IEEE*
texlive-ieee*
texlive-multirow
texlive-subfigure
texlive-subfloat
kbibtex
# cantor
# cantor-R
# maxima
octave
# octave-audio # not yet in f32
octave-communications
# octave-control # included in octave-communications
octave-general
# octave-image # included in octave-communications
octave-io
octave-optim
# octave-signal # included in octave-communications
octave-specfun
octave-statistics
# octave-struct # included in octave-optim
octave-doc
# qtoctave # not yet in f32
fig2ps
pstoedit
gnuplot
# wireshark-qt # not yet in f32
# wireshark
linsmith
ktechlab

# Development
@development-tools
@development-libs
kate
# kate-plugins # included in kate
kdiff3
eclipse
# fedora-kickstarts
# spin-kickstarts
# livecd-tools
# java
icedtea-web

# Desktop
# kdeartwork* # drop?
# plasma-workspace-wallpapers # drop?
# sddm-themes # drop?
dolphin-plugins
# nautilus-dropbox # drop?
nextcloud-client

# System
@virtualization
lxc
lxc-templates
lxc-extra
debootstrap 
libvirt
perl
gpg
p7zip
wget
filelight
terminator
hplip
# hplip-common # already installed with hplip
libsane-hpaio
mesa-dri-drivers # already installed
mesa-libGLU # already installed
mesa-vdpau-drivers
backintime-common
backintime-kde

# Multimedia and codecs
gstreamer1-libav
gstreamer1-plugins-bad-free-extras
gstreamer1-plugins-bad-freeworld
gstreamer1-plugins-good-extras
gstreamer1-plugins-ugly
gstreamer-ffmpeg
xine-lib-extras # not yet in f32
xine-lib-extras-freeworld # not yet in f32
# k3b-extras-freeworld # not yet in f32
gstreamer-plugins-bad
# gstreamer-plugins-bad-free-extras # not yet in f32
gstreamer-plugins-bad-nonfree
gstreamer-plugins-ugly
gstreamer-ffmpeg
libdvdread
libdvdnav
vlc

%end
