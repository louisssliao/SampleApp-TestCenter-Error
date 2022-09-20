#!/bin/zsh
set +e

runTest() {
    bundle exec fastlane xcuitests_simulator
}

saveWorkerLogs() {
    cp -r $XCUITESTS_INSTANCE_DIR/scan/worker-* fastlane/
}

archiveXcresult() {
    cd fastlane/test_output
    echo "$(ls)"
    zip -r report-${BUILD_ID}.zip report.xcresult
    cd ../..
}

echo "=============== Test ==============="
runTest
test_exit_code=$?

echo "=============== Archive Logs ==============="
saveWorkerLogs
archiveXcresult

exit "$test_exit_code"