# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ny_baseball_headlines/version'

Gem::Specification.new do |spec|
  spec.name          = "ny_baseball_headlines"
  spec.version       = NyBaseballHeadlines::VERSION
  spec.authors       = ["Richard-Frost"]
  spec.email         = ["frost.rchrd@gmail.com"]

  spec.summary       = %q{"NY Baseball Headlines"}
  spec.homepage      = "https://github.com/Richard-Frost/ny_baseball_headlines_cli_gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
   # spec.metadata['allowed_push_host'] = "Set to 'https://rubygems.org/'"
  #else
   # raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["ny_baseball_headlines"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end