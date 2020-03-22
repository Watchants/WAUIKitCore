Pod::Spec.new do |spec|
    spec.name                   = 'WAUIKitCore'
    spec.version                = '0.0.1'
    spec.license                = { :type => 'MIT', :file => 'LICENSE' }
    spec.author                 = { 'panghu' => 'panghu.lee@gmail.com' }
    spec.summary                = 'A short description of WAUIKitCore.'
    spec.homepage               = 'https://github.com/Watchants/WAUIKitCore'
    spec.source                 = { :git => 'https://github.com/Watchants/WAUIKitCore.git', :tag => spec.version.to_s }
    
    spec.platform               = :ios
    spec.ios.deployment_target  = '10.0'
    spec.static_framework       = true
    spec.framework              = 'Foundation', 'UIKit'
    
    spec.source_files           = 'Sources/**/*.{h,m,swift}'
    spec.module_map             = 'Sources/WAUIKitCore.modulemap'
    spec.public_header_files    = 'Sources/WAUIKitCore.h'
    spec.dependency 'WAFoundation'
end
