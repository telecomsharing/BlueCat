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
keepassx
sigil
calibre
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
texmaker
texlive
texlive-biblatex
texlive-biblatex-ieee*
texlive-IEEE*
texlive-ieee*
texlive-multirow
texlive-subfigure
texlive-subfloat
kbibtex
octave
# octave-audio # not yet in f32
octave-communications
octave-general
octave-io
octave-optim
octave-specfun
octave-statistics
octave-doc
# qtoctave # not yet in f32
fig2ps
pstoedit
gnuplot
# wireshark-qt # not yet in f32
wireshark
linsmith
ktechlab

# Development and ns3
@development-tools
@development-libs
kate
kdiff3
eclipse
icedtea-web
mercurial
gsl-devel
qt5-devel
# valgrind
# graphviz
# ImageMagick
# python-sphinx
# texlive-fncychap
# texlive-capt-of
# texlive-tabulary
# texlive-eqparbox
# texlive-epstopdf
# texlive-framed
# texlive-dvipng
# texlive-threeparttable
# texlive-wrapfig
# ImageMagick
# flex
# bison
# sqlite-devel
# uncrustify
# openmpi
# openmpi-devel
# goocanvas-devel
# graphviz-devel
# python-kiwi
# pygoocanvas # not yet in f32
# ipython
# cmake
# clang-devel
# llvm-devel
# llvm-static
cvs
# pygobject2
# pygobject3-devel
# gobject-introspection-devel
# goocanvas2-devel

# Desktop
dolphin-plugins
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
xine-lib-extras
xine-lib-extras-freeworld
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
