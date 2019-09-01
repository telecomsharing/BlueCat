# bluecat-live-kde.ks
#
# Description:
# - BlueCat with the K Desktop Environment (KDE), 3.1 GiB version
#
# Maintainer(s):
# - Luis Sequeira <sequeira@unizar.es>
# - BlueCat, https://bluecat.telecomsharing.com/en/

%include bluecat-live-kde-base.ks

# DVD payload
part / --size=16384 --fstype=ext4

#additional repos
repo --name="RPMFusion Free" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch
repo --name="RPMFusion Free - Updates" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-$releasever&arch=$basearch
repo --name="RPMFusion Non-Free" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-$releasever&arch=$basearch
repo --name="RPMFusion Non-Free - Updates" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-$releasever&arch=$basearch
repo --name="Adobe" --baseurl=http://linuxdownload.adobe.com/linux/$basearch
repo --name="Livna" --baseurl=http://rpm.livna.org/repo/$releasever/$basearch
repo --name="VirtualBox" --baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/$releasever/$basearch
repo --name="Skype" --baseurl=http://download.skype.com/linux/repos/fedora/updates/i586
repo --name="Google" --baseurl=http://dl.google.com/linux/chrome/rpm/stable/$basearch
repo --name="Dropbox" --baseurl=http://linux.dropbox.com/fedora/$releasever

%packages
# ship KDE wallpapers instead of GNOME ones
-desktop-backgrounds-basic
kde-wallpapers

# rebranding
-fedora-logos
-fedora-release
-fedora-release-notes
generic-logos
generic-release
generic-release-notes

# Additional packages that are not default in kde-desktop but useful
kde-plasma-translatoid
kde-plasma-yawp
plasma-wallpaper-marble
kdm-themes
k3b				# ~15 megs
#calligra
kdeartwork			# only include some parts of kdeartwork
#twinkle			# (~10 megs)
fuse
liveusb-creator
#pavucontrol		# pavucontrol has duplicate functionality with kmix
#kaffeine*			# kaffeine has duplicate functionality with dragonplayer (~3 megs)
krusader			# file manager, more power-user-oriented than Dolphin (~4 megs)

# applications from fedora repositories
backintime-common
backintime-kde
kbibtex
dia
gimp
gimp-data-extras
gimp-fourier-plugin
inkscape
kdenetwork-kopete
wireshark
wireshark-devel
wireshark-gnome
planner
texmaker
texlive
texlive-latex
texlive-biblatex
texlive-biblatex-ieee*
texlive-IEEE*
texlive-ieee*
texlive-multirow
texlive-subfigure
texlive-subfloat
#kde-partitionmanager
qtparted
#system-config-kickstart
#fedora-kickstarts
#spin-kickstarts
#revisor*
filelight
keepassx
pdfmod
terminator
tomboy
kate
java-1.7.0-openjdk
java-1.7.0-openjdk-devel
icedtea-web
libreoffice
libreoffice-kde
libreoffice-writer2latex
parley
octave
eclipse
gnuplot
scilab
scilab-devel
scilab-doc
wget
nano

# games
knights
freedoom
alienarena
warzone2100
urbanterror
chromium-bsu
frozen-bubble
supertux
supertuxkart

# applications from other repositories
vlc
vlc-extras
p7zip
#p7zip-plugin
unrar
flash-plugin
hplip
hplip-common
libsane-hpaio
VirtualBox-4.2
skype.i586
google-chrome-stable
nautilus-dropbox

# utilities and codecs
joystick-support
kdesdk-dolphin-plugins
alsa-plugins-pulseaudio
gstreamer1-libav
gstreamer1-plugins-bad-free-extras
gstreamer1-plugins-bad-freeworld
gstreamer1-plugins-good-extras
gstreamer1-plugins-ugly
gstreamer-ffmpeg
xine-lib-extras
xine-lib-extras-freeworld
k3b-extras-freeworld
gstreamer-plugins-bad
gstreamer-plugins-bad-free-extras
gstreamer-plugins-bad-nonfree
gstreamer-plugins-ugly
gstreamer-ffmpeg
libdvdread
libdvdnav

#Devel tools
@development-tools
@development-libs
kernel-headers
kernel-devel
dkms
parted-devel
tcl-devel
libX11-devel
xorg-x11-proto-devel
libXt-devel
libXmu-devel
libdnet-devel
libpcap-devel

# 32bits libraries
arts.i686
audiofile.i686
bzip2-libs.i686
cairo.i686
cyrus-sasl-lib.i686
dbus-libs.i686
directfb.i686
esound-libs.i686
fltk.i686
freeglut.i686
gtk2.i686
imlib.i686
lcms-libs.i686
lesstif.i686
libacl.i686
libao.i686
libattr.i686
libcap.i686
libdrm.i686
libexif.i686
libgnomecanvas.i686
libICE.i686
libieee1284.i686
libsigc++20.i686
libSM.i686
libtool-ltdl.i686
libusb.i686
libwmf.i686
libwmf-lite.i686
libX11.i686
libXau.i686
libXaw.i686
libXcomposite.i686
libXdamage.i686
libXdmcp.i686
libXext.i686
libXfixes.i686
libxkbfile.i686
libxml2.i686
libXmu.i686
libXp.i686
libXpm.i686
libXScrnSaver.i686
libxslt.i686
libXt.i686
libXtst.i686
libXv.i686
libXxf86vm.i686
lzo.i686
mesa-libGL.i686
mesa-libGLU.i686
nas-libs.i686
nss_ldap.i686
cdk.i686
openldap.i686
pam.i686
popt.i686
pulseaudio-libs.i686
sane-backends-libs.i686
SDL.i686
svgalib.i686
unixODBC.i686
zlib.i686
compat-expat1.i686
compat-libstdc++-33.i686
openal-soft.i686
alsa-oss-libs.i686
redhat-lsb.i686
alsa-plugins-pulseaudio.i686
alsa-plugins-oss.i686
alsa-lib.i686
nspluginwrapper.i686
libXv.i686
libXScrnSaver.i686
qt.i686
qt-x11.i686
pulseaudio-libs.i686
pulseaudio-libs-glib2.i686
alsa-plugins-pulseaudio.i686
dbus-glib.i686
gtk2-engines.i686
libcanberra.i686
libcanberra-devel.i686
libcanberra-gtk2.i686
libcanberra-gtk3.i686
gtk-murrine-engine.i686
PackageKit-gtk3-module.i686
qtwebkit.i686

# Cantor backends
#cantor-R		# Cantor R backend, built against R-core at compile time
#maxima			# runtime dependency of the Cantor Maxima backend
#octave			# runtime dependency of the Cantor Octave backend

# KDE 4 translations
#kde-l10n-*
#calligra-l10n-*

# removing
#-@kde-telepathy

# use yum-presto by default
yum-presto
yum-plugin-fastestmirror

## avoid serious bugs by omitting broken stuff

%end

%post
# updatedb creates or updates a database used by the command 'locate'
updatedb
%end

%post --nochroot
# We copy the files of our machine's user test to the skel of the new ISO
cp -a /home/tux/\.* $INSTALL_ROOT/etc/skel
cp /etc/kde/kdm/kdmrc $INSTALL_ROOT/etc/kde/kdm/kdmrc
echo 'GRUB_TIMEOUT=5' > /etc/default/grub
echo 'GRUB_DISTRIBUTOR="$(sed 's, release .*$,,g' /etc/system-release)"' >> /etc/default/grub
echo 'GRUB_DEFAULT=saved' >> /etc/default/grub
echo 'GRUB_CMDLINE_LINUX="rd.lvm.lv=fedora/swap rd.md=0 rd.dm=0 vconsole.keymap=es $([ -x /usr/sbin/rhcrashkernel-param ] && /usr/sbin/rhcrashkernel-param || :) rd.luks=0 rd.lvm.lv=fedora/root rhgb quiet"' >> /etc/default/grub
echo 'GRUB_DISABLE_RECOVERY="true"' >> /etc/default/grub
echo 'GRUB_THEME="/boot/grub2/themes/starfield/theme.txt"' >> /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
echo '%wheel	ALL=(ALL)	ALL' >> /etc/sudoers
# rebranding
sed -i -e's/Generic release/BlueCat/g' /etc/fedora-release /etc/issue
%end
