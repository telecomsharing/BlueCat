# bluecat.ks
#
# Description:
# - BlueCat is a Fedora Live Remix with the K Desktop Environment (KDE)
#
# Maintainer(s):
# - Luis Sequeira <sequeira@telecomsharing.com>


# %include /usr/share/spin-kickstarts/bluecat-repo.ks
# %include /usr/share/spin-kickstarts/bluecat-packages.ks
# %include /usr/share/spin-kickstarts/bluecat-packages-games.ks
%include bluecat-live.ks



# DVD payload
part / --size=16384


%packages

# remove fedora logos
-fedora-logos
-fedora-release
-fedora-release-notes
generic-logos
generic-release
generic-release-notes

# remove calligra
# -calligra*

# admin-tools
#-gnome-disk-utility
# kcm_clock still lacks some features, so keep system-config-date around
# -system-config-date
# prefer kcm_systemd
#-system-config-services
# prefer/use kusers
#-system-config-users

# conflicts
# -libcrypt
# libcrypt-nss

%end

%post

%end
