#
# NPM installer
#


# Install other useful binaries
binaries=(
how2
tldr
)

# Install the gems
npm install -g ${binaries[@]}

exit 0
