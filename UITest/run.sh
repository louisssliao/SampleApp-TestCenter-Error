#!/bin/zsh
set +e

runTest() {
    bundle exec fastlane xcuitests_simulator
}

echo "=============== Test ==============="
runTest
test_exit_code=$?

exit "$test_exit_code"