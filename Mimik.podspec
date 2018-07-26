Pod::Spec.new do |s|
  s.name             = 'Mimik'
  s.version          = '0.1.0'
  s.summary          = 'Kotlin-like function literals in Swift'
  s.swift_version    = '4.0'
  s.description      = <<-DESC
Ever wanted Kotlin function literals in Swift? Well now you can
                       DESC

  s.homepage         = 'https://github.com/macdoum1/Mimik'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mmacdougall' => 'mmacdougall@etsy.com' }
  s.source           = { :git => 'https://github.com/mmacdougall/Mimik.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'Mimik/Classes/**/*'
end
