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
brew install caskroom/cask/brew-cask

# Install quicklook plugins
plugins=(
qlcolorcode
qlstephen
qlmarkdown
epubquicklook
osirix-quicklook
quicklook-csv
quicklook-json
cert-quicklook
qlprettypatch
suspicious-package
)

# Install the binaries
brew cask install ${plugins[@]}

# Remove outdated versions from the cellar
brew cleanup

exit 0
