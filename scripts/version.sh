#!/bin/bash

CURR_VERSION=savgol-v`awk '/^version: /{print $2}' packages/savgol/pubspec.yaml`

# iOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_savgol/ios/flutter_savgol.podspec
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_savgol/macos/flutter_savgol.podspec
rm packages/flutter_savgol/macos/*.bak packages/flutter_savgol/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(LibraryVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/flutter_savgol/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/flutter_savgol/$CMAKE_PLATFORM/*.bak
done

git add packages/flutter_savgol/
