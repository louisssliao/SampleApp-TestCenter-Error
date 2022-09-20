source 'https://rubygems.org'

gem 'fastlane', '~> 2.200.0' # https://github.com/fastlane/fastlane/releases
gem 'cocoapods', '~> 1.11.3' # https://github.com/CocoaPods/CocoaPods/releases
gem 'xcodeproj'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
