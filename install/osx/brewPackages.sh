#
# Binary installer
#

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew
brew update && brew upgrade brew-cask

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install gnu-sed --with-default-names

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

brew tap tldr-pages/tldr

# Install other useful binaries
binaries=(
graphicsmagick
netcat
webkit2png
nmap
ffmpeg
mongo
trash
tree
ack
git
hub
tmux
wget
zsh
tldr
reattach-to-user-namespace
node
ssh-copy-id
fortune
pstree
pandoc
shellcheck
cowsay
pkg-config
zeromq
unison
mutt
msmtp
mosh
pkg-config
zeromq
)

# Install the binaries
brew install ${binaries[@]}

# Remove outdated versions from the cellar
brew cleanup

exit 0
