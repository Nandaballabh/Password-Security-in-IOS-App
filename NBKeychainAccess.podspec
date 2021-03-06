
Pod::Spec.new do |s|

  s.name         = "NBKeychainAccess"
  s.version      = "1.0"
  s.license      = { :type => 'MIT' }
  s.summary      = "Simple Example of Keychain"
  s.description  = "Store securly password in keychain"
  s.homepage     = "http://www.github.com/nandaballabh"
  s.author             = { "Nanda Ballabh" => "nandaballabh.kec08@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/Nandaballabh/Password-Security-in-IOS-App.git", :tag=>'v1.0'}
  s.requires_arc = true
  s.source_files = 'Demo_Security/KeychainAccess/*'
end
