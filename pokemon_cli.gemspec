lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pokemon_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "pokemon_cli"
  spec.version       = PokemonCli::VERSION
  spec.authors       = ["ritchey0713"]
  spec.email         = ["ritchey0713@gmail.com"]

  spec.summary       = "pokemon GEM"
  spec.description   = "pokemon GEM"
  spec.homepage      = "https://github.com/ritchey0713/pokemon_cli"

  spec.metadata["allowed_push_host"] = "https://github.com/ritchey0713/pokemon_cli"

  spec.metadata["homepage_uri"] = "https://github.com/ritchey0713/pokemon_cli"
  spec.metadata["source_code_uri"] = "https://github.com/ritchey0713/pokemon_cli"
  spec.metadata["changelog_uri"] = "https://github.com/ritchey0713/pokemon_cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "httparty"
end
