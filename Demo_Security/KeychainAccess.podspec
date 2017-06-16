
Pod::Spec.new do |s|

  s.name         = "KeychainAccess"
  s.version      = "1.0"
  s.summary      = "Simple Example of Keychain"
  s.description  = "Store securly password in keychain"
  s.homepage     = "http://www.github.com/nandaballabh"
  s.author             = { "Nanda Ballabh" => "nandaballabh.kec08@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/Nandaballabh/TextField-with-validation-and-error-highlight.git",:tag=>''}
  s.requires_arc = true
  s.source_files = 'Demo_Security/KeychainAccess/*'
end
