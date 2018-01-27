# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "thompson_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "thompson_view_tool"
  spec.version       = ThompsonViewTool::VERSION
  spec.authors       = ["Peter Thompson"]
  spec.email         = ["somethingpeter@gmail.com"]

  spec.summary       = %q{View specific methods for applications.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://github.com/Peter6848"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
