# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maker/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "maker-cli"
  spec.version       = Maker::Cli::VERSION
  spec.authors       = ["Dan Davey"]
  spec.email         = ["dan@offerzen.com"]

  spec.summary       = %q{CLI tool for Makers}
  spec.description   = %q{I'll fo this later}
  spec.homepage      = "https://make.offerzen.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
