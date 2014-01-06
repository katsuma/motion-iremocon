$:.unshift("/Library/RubyMotion/lib")

require File.expand_path('../lib/iremocon/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ryo NAKAMURA", "Ryo Katsuma"]
  gem.email         = ["ryo-nakamura@cookpad.com", "katsua@gmail.com"]
  gem.description   = "Iremocon is a gem for managing iRemocon through telnet"
  gem.summary       = "iRemocon manager"
  gem.homepage      = "https://github.com/katsuma/motion-iremocon"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "iremocon"
  gem.require_paths = ["lib"]
  gem.version       = MotionIremocon::VERSION

  gem.add_development_dependency "rspec"
end
