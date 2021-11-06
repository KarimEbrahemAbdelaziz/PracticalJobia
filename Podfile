# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'PracticalJobia' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for PracticalJobia
  pod 'SkeletonView', '1.21.2'
  pod 'AllowX', '1.1.2'
  pod 'R.swift', '5.4.0'
  pod 'Alamofire', '5.4.3'
  pod 'IQKeyboardManagerSwift', '6.5.6'
  pod 'SwiftLint', '0.43.1'
  pod 'Firebase/Auth', '8.5.0'
  pod 'Firebase/Analytics', '8.5.0'
  pod 'Firebase/Firestore', '8.5.0'
  pod 'lottie-ios', '3.2.3'
  pod 'Resolver', '1.4.3'
  pod 'JGProgressHUD', '2.2'
  pod 'Kingfisher', '7.1.1'

end

post_install do |pi|
   pi.pods_project.targets.each do |t|
       t.build_configurations.each do |bc|
           if bc.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] == '8.0'
             bc.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
           end
       end
   end
end
