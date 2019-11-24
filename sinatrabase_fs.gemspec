lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sinatrabase_fs/version"

Gem::Specification.new do |spec|
  spec.name          = "autogen_sindb"
  spec.version       = SinatrabaseFs::VERSION
  spec.date          = "2019-11-23"
  spec.authors       = ["Naya Willis"]
  spec.email         = ["greedybrain18@gmail.com"]
  spec.summary       = "This gem auto-generates a Sinatra and Database file structure."
  spec.description   = "This gem auto-generates a Sinatra and Database file structure. Modify at your discretion"
  spec.homepage      = "https://github.com/greedybrain/AutoGenSinatraAndDatabaseFS"
  spec.license       = "MIT"
  spec.files         = ["lib/sinatrabase_fs.rb", "lib/sinatrabase_fs/version.rb", "lib/sinatrabase_fs/structure_me.rb", "config/env.rb"]
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.executables << 'autogen_sindb'  

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
