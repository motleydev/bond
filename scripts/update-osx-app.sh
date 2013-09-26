#!/usr/bin/env bash

echo "Moving /app directory into Resources for Bond.app ..."
cp -r -f app/ /Applications/Bond.app/Contents/Resources/app.nw/
echo "Adding the Data to Info.plist ..."
cp -r -f src/assets/Info.plist /Applications/Bond.app/Contents/Info.plist
echo "Giving the icon some skin... cause we like it like that."
sips -s format icns ./src/assets/Bond-Icon.psd --out /Applications/Bond.app/Contents/Resources/Bond-Icon.icns &> /dev/null