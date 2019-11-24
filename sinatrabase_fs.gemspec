lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sinatrabase_fs/version"

Gem::Specification.new do |spec|
  spec.name          = "sinatrabase_fs"
  spec.version       = SinatrabaseFs::VERSION
  spec.authors       = ["Naya Willis"]
  spec.email         = ["greedybrain18@gmail.com"]
  spec.summary       = "This gem auto-generates a Sinatra and Database file structure."
  spec.description   = "This gem auto-generates a Sinatra and Database file structure. Modify at your discretion"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.executables   

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
