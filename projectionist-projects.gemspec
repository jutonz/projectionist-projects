# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "projectionist/projects/version"

Gem::Specification.new do |spec|
  spec.name          = "projectionist-projects"
  spec.version       = Projectionist::Projects::VERSION
  spec.authors       = ["Jeremy W. Rowe"]
  spec.email         = ["jeremy.w.rowe@gmail.com"]

  spec.license       = "MIT"

  spec.summary       = %q{A quick and dirty script for installing projectionist files in the current directory}
  spec.description   = %q{Projectionist + vim make it easier to jump between alternate files. Configuration of projectionist is mind numbing, I hope to reduce that by adding projectionist project files over time.}
  spec.homepage      = "https://github.com/jeremywrowe/projectionist-projects"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "highline"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
