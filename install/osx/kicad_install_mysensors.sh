#!/bin/bash

echo "Installing KiCad libraries for MySensors"

echo "Cloning git projects..."
mkdir ~/git/mysensors-kicad
git clone https://github.com/mysensors-kicad/part_management.git ~/git/mysensors-kicad/part_management
git clone https://github.com/mysensors-kicad/mysensors_symbols.git ~/git/mysensors-kicad/mysensors_symbols
git clone https://github.com/mysensors-kicad/mysensors_arduino.pretty.git ~/git/mysensors-kicad/mysensors_arduino.pretty
git clone https://github.com/mysensors-kicad/mysensors_buttons.pretty.git ~/git/mysensors-kicad/mysensors_buttons.pretty
git clone https://github.com/mysensors-kicad/mysensors_connectors.pretty.git ~/git/mysensors-kicad/mysensors_connectors.pretty
git clone https://github.com/mysensors-kicad/mysensors_handsoldering.pretty.git ~/git/mysensors-kicad/mysensors_handsoldering.pretty
git clone https://github.com/mysensors-kicad/mysensors_leds.pretty.git ~/git/mysensors-kicad/mysensors_leds.pretty
git clone https://github.com/mysensors-kicad/mysensors_network.pretty.git ~/git/mysensors-kicad/mysensors_network.pretty
git clone https://github.com/mysensors-kicad/mysensors_obscurities.pretty.git ~/git/mysensors-kicad/mysensors_obscurities.pretty
git clone https://github.com/mysensors-kicad/mysensors_radios.pretty.git ~/git/mysensors-kicad/mysensors_radios.pretty
git clone https://github.com/mysensors-kicad/mysensors.3dshapes.git ~/git/mysensors-kicad/mysensors.3dshapes

echo "Adding symbols library..."
echo "MYSLOCAL=~/git/mysensors-kicad" >> ~/Library/Preferences/kicad/kicad_common
sed -i '$i\  (lib (name mysensors_arduino)(type Github)(uri https://github.com/mysensors-kicad/mysensors_arduino.pretty)(options allow_pretty_writing_to_this_dir=${HOME}/git/mysensors-kicad/mysensors_arduino.pretty)(descr "Arduino footprints"))' ~/Library/Preferences/kicad/fp-lib-table
sed -i '$i\  (lib (name mysensors_buttons)(type Github)(uri https://github.com/mysensors-kicad/mysensors_buttons.pretty)(options allow_pretty_writing_to_this_dir=${HOME}/git/mysensors-kicad/mysensors_buttons.pretty)(descr "Button footprints for MySensors"))' ~/Library/Preferences/kicad/fp-lib-table
sed -i '$i\  (lib (name mysensors_connectors)(type Github)(uri https://github.com/mysensors-kicad/mysensors_connectors.pretty)(options allow_pretty_writing_to_this_dir=${HOME}/git/mysensors-kicad/mysensors_connectors.pretty)(descr "Connector footprint modules used by MySensors"))' ~/Library/Preferences/kicad/fp-lib-table
sed -i '$i\  (lib (name mysensors_handsoldering)(type Github)(uri https://github.com/mysensors-kicad/mysensors_handsoldering.pretty)(options allow_pretty_writing_to_this_dir=${HOME}/git/mysensors-kicad/mysensors_handsoldering.pretty)(descr "Various footprints adapted for handsoldering"))' ~/Library/Preferences/kicad/fp-lib-table
sed -i '$i\  (lib (name mysensors_leds)(type Github)(uri https://github.com/mysensors-kicad/mysensors_leds.pretty)(options allow_pretty_writing_to_this_dir=${HOME}/git/mysensors-kicad/mysensors_leds.pretty)(descr "LED footprint modules used by MySensors"))' ~/Library/Preferences/kicad/fp-lib-table
sed -i '$i\  (lib (name mysensors_network)(type Github)(uri https://github.com/mysensors-kicad/mysensors_network.pretty)(options allow_pretty_writing_to_this_dir=${HOME}/git/mysensors-kicad/mysensors_network.pretty)(descr "Network device footprints used by MySensors"))' ~/Library/Preferences/kicad/fp-lib-table
sed -i '$i\  (lib (name mysensors_obscurities)(type Github)(uri https://github.com/mysensors-kicad/mysensors_obscurities.pretty)(options allow_pretty_writing_to_this_dir=${HOME}/git/mysensors-kicad/mysensors_obscurities.pretty)(descr "Additional components for MySensors"))' ~/Library/Preferences/kicad/fp-lib-table
sed -i '$i\  (lib (name mysensors_radios)(type Github)(uri https://github.com/mysensors-kicad/mysensors_radios.pretty)(options allow_pretty_writing_to_this_dir=${HOME}/git/mysensors-kicad/mysensors_radios.pretty)(descr "RF modules supported by MySensors"))' ~/Library/Preferences/kicad/fp-lib-table
