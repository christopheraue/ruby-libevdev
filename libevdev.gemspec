# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'libevdev/version'

Gem::Specification.new do |spec|
  spec.name          = "libevdev"
  spec.version       = Libevdev::VERSION
  spec.authors       = ["Christopher Aue"]
  spec.email         = ["mail@christopheraue.net"]

  spec.summary       = %q{libevdev bindings for ruby}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "linux_input", "~> 1.0"
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
