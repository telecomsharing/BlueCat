# bluecat-repo.ks
#
# Description:
# - Repositories used to build BlueCat with the K Desktop Environment (KDE)
#
# Maintainer(s):
# - Luis Sequeira <sequeira@telecomsharing.com>


repo --name="Fedora" --mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=fedora-$releasever&arch=$basearch
repo --name="RPMFusion-Free" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch
repo --name="RPMFusion-Free-Updates" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-$releasever&arch=$basearch
repo --name="RPMFusion-Non-Free" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-$releasever&arch=$basearch
repo --name="RPMFusion-Non-Free-Updates" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-$releasever&arch=$basearch
repo --name="PlayOnLinux" --baseurl=http://rpm.playonlinux.com/fedora/yum/base
repo --name="QOwnNotes" --baseurl=http://download.opensuse.org/repositories/home:/pbek:/QOwnNotes/Fedora_32/
