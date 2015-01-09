# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-pullquote-tag/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-pullquote-tag"
  spec.version       = Octopress::Tags::PullQuote::VERSION
  spec.authors       = ["Brandon Mathis"]
  spec.email         = ["brandon@imathis.com"]
  spec.summary       = %q{Elegant pullquotes for Jekyll site site.}
  spec.description   = %q{Elegant pullquotes for Jekyll site site.}
  spec.homepage      = "https://github.com/octopress/pullquote-tag"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll"
  spec.add_runtime_dependency "rubypants"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "clash"
  spec.add_development_dependency "RedCloth"
  spec.add_development_dependency "rubypants"

  if RUBY_VERSION >= "2"
    spec.add_development_dependency "pry-byebug"
  end
end
