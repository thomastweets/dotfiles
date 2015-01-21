#
# Application installer (via brew-cask)
#

set -e

# Apps
apps=(
dropbox
google-chrome
qlcolorcode
appcleaner
firefox
karabiner
spotify
vagrant
flash
iterm2
qlprettypatch
virtualbox
atom
flux
qlstephen
vlc
quicklook-json
skype
transmission
apikitchen
webstorm
owncloud
bartender
bettertouchtool
keepassx
hipchat
mendeley-desktop
google-drive
pycharm-ce
hex-fiend
xscope
filezilla
textwrangler
caffeine
java6
teamviewer
keka
flashlight
)

# fonts
fonts=(
font-m-plus
font-clear-sans
font-roboto
)

# Specify the location of the apps
appdir="/Applications"

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

main() {

  # Ensure homebrew is installed
  homebrew

  # Install homebrew-cask
  echo "installing cask..."
  brew tap phinze/homebrew-cask
  brew install brew-cask

  # Tap alternative versions
  brew tap caskroom/versions

  # Tap the fonts
  brew tap caskroom/fonts

  # install apps
  echo "installing apps..."
  brew cask install --appdir=$appdir ${apps[@]}

  # install fonts
  echo "installing fonts..."
  brew cask install ${fonts[@]}

  cleanup
}

homebrew() {
  if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
}

cleanup() {
  brew cleanup
}

main "$@"
exit 0
