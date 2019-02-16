source 'https://github.com/daniele99999999/cocoapodsspecsinternal.git'
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '12.1'
use_frameworks!

def shared_pods
    pod 'SwifterSwift', '4.2.0'
    pod 'NetworkManager', '1.0.20'
#    pod 'NetworkManager', :path => '../../Frameworks/networkmanager-ios'
    pod 'Utils', '1.0.14'
#    pod 'Utils', :path => '../../Frameworks/utils-ios'
    pod 'NetworkManagerObjectMapper', '1.0.3'
#    pod 'NetworkManagerObjectMapper', :path => '../../Frameworks/networkmanagerobjectmapper-ios'
    pod 'LoggerManager', '1.0.4'
#    pod 'LoggerManager', :path => '../../Frameworks/loggermanager-ios'
end

target 'TestFrameworks' do
	project 'TestFrameworks'
        shared_pods
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '4.0'
    end
  end
end
