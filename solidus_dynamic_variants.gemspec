# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)
require 'solidus_dynamic_variants/version'

Gem::Specification.new do |s|
  s.name = 'solidus_dynamic_variants'
  s.version = SolidusDynamicVariants::VERSION
  s.summary = 'Create variants on the fly'
  s.description = 'Creates variants from selected options on the fly during cart populate in your Solidus store'
  s.license = 'BSD-3-Clause'

  s.author = 'stefan hartmann'
  s.email = 'stefan@yo-code.de'
  s.homepage = 'http://www.wemove.com'

  if s.respond_to?(:metadata)
    s.metadata["homepage_uri"] = s.homepage if s.homepage
    s.metadata["source_code_uri"] = s.homepage if s.homepage
  end

  s.required_ruby_version = '~> 2.4'

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.test_files = Dir['spec/**/*']
  s.bindir = "exe"
  s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'solidus_core', ['>= 2.0.0', '< 3']
  s.add_dependency 'solidus_support', '>= 0.4.0'
  s.add_dependency 'deface', '~> 1.0'

  s.add_development_dependency 'solidus_dev_support'
end
