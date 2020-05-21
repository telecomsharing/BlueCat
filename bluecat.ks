# bluecat.ks
#
# Description:
# - BlueCat is a Fedora Live Remix with the K Desktop Environment (KDE)
#
# Maintainer(s):
# - Luis Sequeira <sequeira@telecomsharing.com>


%include bluecat-repo.ks
%include bluecat-packages.ks
%include bluecat-live.ks

# DVD payload
part / --size=12000


%packages

# remove fedora logos
-fedora-logos
-fedora-release
-fedora-release-notes
generic-logos
generic-release
generic-release-notes

# remove calligra
-calligra*

%end
