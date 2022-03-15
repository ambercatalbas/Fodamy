# Uncomment the next line to define a global platform for your project
# platform :ios, '11.0'

use_frameworks!

workspace 'Fodamy'

target 'Fodamy' do

 project 'Fodamy.xcodeproj'

  # Pods for Fodamy
  
  # Network
   pod 'Alamofire', '~> 5.4'
   
   # Helper
   pod "TinyConstraints", '~> 4.0'
   pod "IQKeyboardManagerSwift", '~> 6.5'
   pod 'SwiftLint', '~> 0.44'
   pod 'MobilliumUserDefaults', '~> 2.0'
   pod 'MobilliumDateFormatter', '~> 1.2'
   pod 'MobilliumBuilders', '~> 1.4'
   pod 'Kingfisher', '~> 6.3.1'
   pod 'SwiftEntryKit', '~> 1.2'
   pod 'KeychainSwift', '~> 19.0'
   pod 'Segmentio', '~> 4.1'
  target 'FodamyTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'FodamyUITests' do
    # Pods for testing
  end

end

target 'DataProvider' do
  
  project 'DataProvider/DataProvider.xcodeproj'
  
  # Pods for DataProvider
  
  # Network
  pod 'Alamofire', '~> 5.4'
  pod 'KeychainSwift', '~> 19.0'
  target 'DataProviderTests' do
    inherit! :search_paths
    # Pods for testing
    
    # Network
    pod 'Alamofire', '~> 5.4'
    
  end
  
end

target 'UIComponents' do

  project 'UIComponents/UIComponents.xcodeproj'
  
  # Pods for UIComponents
  
  # Helper
  pod "TinyConstraints", '~> 4.0'
  pod 'SwiftGen', '~> 6.5'
  pod 'MobilliumBuilders', '~> 1.4'
  pod 'Segmentio', '~> 4.1'
  pod 'Kingfisher', '~> 6.3.1'
  pod 'SwiftEntryKit', '~> 1.2'
  
  target 'UIComponentsTests' do
    inherit! :search_paths
    # Pods for testing
  end
  
end

target 'Utilities' do
  
  project 'Utilities/Utilities.xcodeproj'
  
  # Pods for Utilities
  
  # Helper
  pod 'MobilliumUserDefaults', '~> 2.0'
  
  target 'UtilitiesTests' do
    inherit! :search_paths
    # Pods for testing
  end
  
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
    end
  end
end
