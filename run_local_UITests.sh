# This script uses the same setup as Jenkins and allows Devs to run UI test via Fastlane locally.

export LANG="en_US.UTF-8"
export DEVELOPER_DIR="/Applications/Xcode-14.app/Contents/Developer"
export XCUITESTS_WIREMOCK_HOST_URL="http://localhost:8080"
export XCUITESTS_INSTANCE_DIR="${HOME}/Derived_Data/SampleApp_Test"
export XCUITESTS_DEVICE="iPhone 13 Pro (16.0)"
export XCUITESTS_DEVICE_NAME="iPhone 13 Pro"
export XCUITESTS_DEVICE_RUNTIME="com.apple.CoreSimulator.SimRuntime.iOS-16-0"
export XCUITESTS_TRY_COUNT="1"
export XCUITESTS_PARALLEL_TESTRUN_COUNT="2"
export XCUITESTS_INSTANCE_SCHEME="SampleApp"
export XCUITESTS_TESTPLAN="SampleApp"

echo "Xcode Path: $DEVELOPER_DIR"
echo "Test Target: $XCUITESTS_DEVICE"
echo "Test Scheme: $XCUITESTS_INSTANCE_SCHEME"
echo "Test Plan: $XCUITESTS_TESTPLAN"

chmod +x ./UITest/init.sh
./UITest/init.sh

chmod +x ./UITest/run.sh
./UITest/run.sh

chmod +x ./UITest/tearDown.sh
./UITest/tearDown.sh
