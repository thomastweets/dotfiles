#
# Gem installer
#


# Install other useful binaries
binaries=(
travis
iStats
)

# Install the gems
gem install ${binaries[@]}

exit 0
