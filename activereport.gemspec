# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_report/version'

Gem::Specification.new do |spec|
  spec.name          = 'activereport'
  spec.version       = ActiveReport::VERSION
  spec.authors       = ['João Fraga']
  spec.email         = ['jgfraga@gmail.com']

  spec.summary       = 'A simple way export your Rails models'
  spec.description   = 'A DSL to easily export your Rails models in various fomats (PDF, XSL, etc)'
  spec.homepage      = 'https://github.com/joaofraga/latex2image'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
end
