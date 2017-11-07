
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "migration/worker/version"

Gem::Specification.new do |spec|
  spec.name          = "migration-worker"
  spec.version       = Migration::Worker::VERSION
  spec.authors       = ["marvin"]
  spec.email         = ["marvin5064@gmail.com"]

  spec.summary       = %q{database data migration.}
  spec.description   = %q{go through a database and generated models automatically for migration.}
  spec.homepage      = "https://github.com/marvin5064"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rails', '~> 4.2'
  spec.add_development_dependency "rspec", "~> 3.0"
end
