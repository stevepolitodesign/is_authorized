require_relative 'lib/is_authorized/version'

Gem::Specification.new do |spec|
  spec.name          = "is_authorized"
  spec.version       = IsAuthorized::VERSION
  spec.authors       = ["Steve Polito"]
  spec.email         = ["stevepolito@hey.com"]

  spec.summary       = %q{Simple authorization for Ruby on Rails.}
  spec.description   = %q{Simple authorization for Ruby on Rails.}
  spec.homepage      = "https://github.com/stevepolitodesign/is_authorized"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/stevepolitodesign/is_authorized"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
