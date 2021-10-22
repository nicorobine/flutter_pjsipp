#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_pjsip.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_pjsip'
    s.version          = '0.0.1'
    s.summary          = 'A new Flutter plugin.'
    s.description      = <<-DESC
  A new Flutter plugin.
                         DESC
    s.homepage         = 'http://example.com'
    s.license          = { :file => '../LICENSE' }
    s.author           = { 'Your Company' => 'email@example.com' }
    s.source           = { :path => '.' }
    s.source_files = 'Classes/**/*.{h,m}'
    s.public_header_files = 'Classes/**/*.h'
    s.dependency 'Flutter'
    s.resources = ['Classes/PJSIPClass/Assets/*.png','Classes/PJSIPClass/Assets/*.wav']
    #s.dependency 'pjsip','~> 2.9.0.2'
    s.dependency 'nr_pjsip_ios','~> 0.1.1'
    #s.dependency 'Masonry', '~> 0.6.3'
    s.dependency 'Masonry', '~> 1.1.0'
    s.ios.deployment_target = '9.0'
    s.static_framework = true

=begin
    header_search_paths     = [
                                  '"$(PODS_ROOT)/Headers/Public/pjsip/pjlib/include"',
                                  '"$(PODS_ROOT)/Headers/Public/pjsip/pjlib-util/include"',
                                  '"$(PODS_ROOT)/Headers/Public/pjsip/pjmedia/include"',
                                  '"$(PODS_ROOT)/Headers/Public/pjsip/pjnath/include"',
                                  '"$(PODS_ROOT)/Headers/Public/pjsip/pjsip/include"'
                                ]
=end

    header_search_paths     = [
                                  '"$(PODS_ROOT)/Headers/Public/nr_pjsip_ios/pjlib/headers"',
                                  '"$(PODS_ROOT)/Headers/Public/nr_pjsip_ios/pjlib-util/headers"',
                                  '"$(PODS_ROOT)/Headers/Public/nr_pjsip_ios/pjmedia/headers"',
                                  '"$(PODS_ROOT)/Headers/Public/nr_pjsip_ios/pjnath/headers"',
                                  '"$(PODS_ROOT)/Headers/Public/nr_pjsip_ios/pjsip/headers"'
                               ]


    s.xcconfig                = {
                                  'HEADER_SEARCH_PATHS'          => header_search_paths.join(' '),
                                  'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
                                }

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end

