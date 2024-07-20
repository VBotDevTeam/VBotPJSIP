Pod::Spec.new do |s|
	s.name                  = "VBotPJSIP"
	s.version               = "1.0.0"
	s.summary               = "PJSIP 2.10 for iOS"
	s.description           = "Pod for distributing PJSIP 2.10 wrapped in a framework."
	s.homepage              = "https://vbot.vn"

	s.license               = { :type => "GNU GPLv3", :file => "LICENSE" }
	s.author                = { "vbot" => "vbot.vn" }

	s.source                = { :git => "https://github.com/VBotDevTeam/VBotPJSIP.git", :tag => s.version.to_s }
	
	s.ios.deployment_target = '13.5'

	s.preserve_paths        = "VBotPJSIP.framework/*"
	s.public_header_files   = "VBotPJSIP.framework/Versions/A/Headers/**/*.{h,hpp}"
	s.source_files		    = "VBotPJSIP.framework/Versions/A/Headers/**/*.{h,hpp}"
	s.vendored_frameworks   = "VBotPJSIP.framework"

	s.libraries 			= 'stdc++'
	s.frameworks            = 'CoreFoundation', 'AudioToolbox', 'AVFoundation', 'GLKit', 'CFNetwork',  'CoreMedia'
	s.xcconfig = {
        'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
	}
end

