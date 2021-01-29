#
# Be sure to run `pod lib lint HyBaseComponents.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HyBaseComponents'
  s.version          = '0.0.1'
  s.summary          = 'HyBaseComponents'

  
  s.description      = <<-DESC
TODO: Hy Base Components
                       DESC

  s.homepage         = 'https://github.com/hydreamit/HyBaseComponents'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hydreamit' => 'hydreamit@163.com' }
  s.source           = { :git => 'https://github.com/hydreamit/HyBaseComponents.git', :tag => s.version.to_s }


  s.ios.deployment_target = '9.0'
  
  
  s.subspec 'TipView' do |ss|
      ss.source_files = 'HyBaseComponents/Classes/TipView/**/*'
  end
  
  s.subspec 'Network' do |ss|
      ss.source_files = 'HyBaseComponents/Classes/Network/**/*'
      ss.dependency 'AFNetworking'
      ss.dependency 'YYCache'
      ss.dependency 'HyBaseComponents/TipView'
  end
  
  s.subspec 'ModelParser' do |ss|
      ss.source_files = 'HyBaseComponents/Classes/ModelParser/**/*'
      ss.dependency 'YYModel'
      ss.dependency 'MJExtension'
  end
  
  s.subspec 'RefreshView' do |ss|
      ss.source_files = 'HyBaseComponents/Classes/RefreshView/**/*'
      ss.dependency 'MJRefresh'
      ss.dependency 'KafkaRefresh'
  end
  
  s.subspec 'Monitor' do |ss|
      ss.source_files = 'HyBaseComponents/Classes/Monitor/**/*'
  end
  
  s.subspec 'MVVM' do |ss|
      ss.source_files = 'HyBaseComponents/Classes/MVVM/**/*'
      ss.dependency 'ReactiveObjC'
      ss.dependency 'HyCategoriess'
      ss.dependency 'HyBaseComponents/Network'
      ss.dependency 'HyBaseComponents/ModelParser'
      ss.dependency 'HyBaseComponents/RefreshView'
  end
  

end
