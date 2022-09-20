set +e

rm -rf $XCUITESTS_INSTANCE_DIR
rm -rf fastlane/test_output

defaults write com.apple.iphonesimulator ConnectHardwareKeyboard 0

# Delete simulators
xcrun simctl list | grep "$XCUITESTS_DEVICE_NAME" | grep -o "([-A-Z0-9]*)" | sed 's/[\\(\\)]//g' | xargs -I uuid xcrun simctl delete uuid

# Delete clone simulators
xcrun simctl --set testing delete all

# Create simulator
xcrun simctl create "$XCUITESTS_DEVICE_NAME" "$XCUITESTS_DEVICE_NAME" $XCUITESTS_DEVICE_RUNTIME
