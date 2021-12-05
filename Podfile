# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

# Comment the next line if you don't want to use dynamic frameworks
use_frameworks!

target 'RunnersHigh' do
  pod 'R.swift', '5.2.2'
  pod 'LicensePlist'

  # Pods for RunnersHigh

  target 'RunnersHighTests' do
    inherit! :search_paths
    # Pods for testing
  end
end

target 'Map' do
  pod 'R.swift', '5.2.2'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
    end
  end
end
