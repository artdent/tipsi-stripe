require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package['version']

Pod::Spec.new do |s|
  s.name             = "tipsi-stripe"
  s.version          = version
  s.summary          = package["description"]
  s.requires_arc = true
  s.author       = 'Tipsi'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/tipsi/tipsi-stripe'
  s.source       = { :git => "https://github.com/tipsi/tipsi-stripe.git" }
  s.source_files = 'ios/TPSStripe/*'
  s.platform     = :ios, "8.0"
  s.dependency 'React'
  s.dependency 'Stripe'
end
