# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'generamba/version'

Gem::Specification.new do |spec|
  spec.name          = 'generamba'
  spec.version       = Generamba::VERSION
  spec.authors       = ['Egor Tolstoy', 'Andrey Zarembo', 'Beniamin Sarkisyan', 'Aleksandr Sychev']
  spec.email         = 'rambler.ios@rambler-co.ru'

  spec.summary       = 'Advanced code generator for Xcode projects with a nice and flexible template system.'
  spec.description   = 'Generamba is a powerful and easy-to-use Xcode code generator. It provides a project-based configuration, flexible templates system, the ability to generate code and tests simultaneously.'
  spec.homepage      = 'https://github.com/rambler-digital-solutions/Generamba'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ['generamba']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3'

  spec.add_runtime_dependency 'thor', '~> 0.20.0'
  spec.add_runtime_dependency 'xcodeproj', '>= 1.7.0', '< 2.0.0'
  spec.add_runtime_dependency 'liquid', '~> 4.0.3'
  spec.add_runtime_dependency 'git', '>= 1.5.0'
  spec.add_runtime_dependency 'cocoapods-core', '>= 1.5.0', '< 2.0.0'
  spec.add_runtime_dependency 'terminal-table', '~> 1.8.0'

  spec.add_development_dependency 'bundler', '~> 2.0.1'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'fakefs', '~> 0.13.3'
  spec.add_development_dependency 'activesupport', '~> 5.2'
end
