# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'homeopathy/version'

Gem::Specification.new do |spec|
  spec.name          = "homeopathy"
  spec.version       = Homeopathy::VERSION
  spec.authors       = ["Paul Robinson & Ben Gibbs"]
  spec.email         = ["paul@iconoplex.co.uk"]

  spec.summary       = %q{Homeopathy gem does nothing. That's the point.}
  spec.homepage      = "http://github.com/p7r/homeopathy"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
