repo --name="RPMFusion Free" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-$releasever&arch=$basearch
repo --name="RPMFusion Free - Updates" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-$releasever&arch=$basearch
repo --name="RPMFusion Non-Free" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-$releasever&arch=$basearch
repo --name="RPMFusion Non-Free - Updates" --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-$releasever&arch=$basearch
#repo --name="Adobe" --baseurl=http://linuxdownload.adobe.com/linux/$basearch
#repo --name="VirtualBox" --baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/$releasever/$basearch
#repo --name="Skype" --baseurl=http://download.skype.com/linux/repos/fedora/updates/i586
#repo --name="Skype" --baseurl=https://repo.skype.com/rpm/stable/
#repo --name="Google" --baseurl=http://dl.google.com/linux/chrome/rpm/stable/$basearch
#repo --name="Dropbox" --baseurl=http://linux.dropbox.com/fedora/$releasever
#repo --name="ownCloud" --baseurl=http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Fedora_27
repo --name="PlayOnLinux" --baseurl=http://rpm.playonlinux.com/fedora/yum/base
