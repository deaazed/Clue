#!/bin/bash
# Connect to the Android emulator container.
adb connect emulator:5555

#List the available Flutter devices. You should see the connected dockerized emulator.
flutter devices

# Install the Flutter packages.
flutter pub get

# Install the Flutter project.
flutter create .


# Run the Flutter app on the connected emulator.
# Add `--trace-startup` to stop the Flutter process from blocking the terminal.
flutter run 
