# frozen_string_literal: true

require_relative "lib/importmap/role/version"

Gem::Specification.new do |spec|
  spec.name = "importmap-role"
  spec.version = Importmap::Role::VERSION
  spec.authors = ["ryankopf"]
  spec.email = ["git@ryankopf.com"]

  spec.summary = "Importmap-Role allows you to create different importmaps for different users, and dynamically update them via JavaScript."
  spec.description = "Importmap-Role enables dynamic generation of importmaps in Rails applications based on user roles. It allows defining role-specific JavaScript files in separate importmap configuration files, which are combined server-side depending on the authenticated user's role. The gem includes a mountable engine with a controller that serves the combined importmap, allowing client-side updating of importmaps."
  spec.homepage = "https://github.com/ryankopf/importmap-role"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"  # Update if using a different gem server

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ryankopf/importmap-role"  # Update if different
  spec.metadata["changelog_uri"] = "https://github.com/ryankopf/importmap-role/blob/main/CHANGELOG.md"  # Update once you have a CHANGELOG.md

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Add dependencies here
  spec.add_dependency "rails", ">= 6.0"
  spec.add_dependency "importmap-rails"

  # Development dependencies can be added here
  # spec.add_development_dependency "rspec-rails"
end
