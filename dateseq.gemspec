# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dateseq/version'

Gem::Specification.new do |spec|
  spec.name          = 'dateseq'
  spec.version       = Dateseq::VERSION
  spec.authors       = ['masa21kik']
  spec.email         = ['masa21kik@gmail.com']
  spec.summary       = %q{Generate date sequence like seq command}
  spec.description   = %q{Generate date sequence like seq command}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 2.2.33'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
end
