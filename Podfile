source 'https://github.com/CocoaPods/Specs'

platform :ios, '9.0'
use_frameworks!

#=== Note
#
# 基本的にpod利用が推奨されているライブラリのみ記述しています
# 毎回のビルド時間を短縮させるため可能な限りcarthageを利用してください
#
def app_pods

    #=== Required
    #
    pod 'SwiftLint', '~> 0.28.2'
    pod 'SwiftFormat/CLI', '~> 0.39.0'
    #pod 'R.swift', '~> 5.0.0.alpha.2'
    pod 'GPUImage', '~> 0.1.7'
    
    #=== Option
    pod 'Firebase/Analytics', '~> 6.5.0'
    pod 'Fabric', '~> 1.10.2'
    pod 'Crashlytics', '~> 3.13.3'
end

target 'fastlaneTest01' do
    app_pods
end

post_install do |installer|
    puts 'Removing static analyzer support'
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['OTHER_CFLAGS'] = "$(inherited) -Qunused-arguments -Xanalyzer -analyzer-disable-all-checks"
        end
    end
end
