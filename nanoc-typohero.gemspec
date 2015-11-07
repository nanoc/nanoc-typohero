# encoding: utf-8

$LOAD_PATH.unshift(File.expand_path('../lib/', __FILE__))
require 'nanoc/typohero/version'

Gem::Specification.new do |s|
  s.name        = 'nanoc-typohero'
  s.version     = Nanoc::TypoHero::VERSION
  s.homepage    = 'http://nanoc.ws/'
  s.summary     = 'TypoHero support for nanoc'
  s.description = 'Provides a :typohero filter for nanoc'

  s.author  = 'Denis Defreyne'
  s.email   = 'denis.defreyne@stoneship.org'
  s.license = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  s.files              = Dir['[A-Z]*'] +
                         Dir['{lib,test}/**/*'] +
                         ['nanoc-typohero.gemspec']
  s.require_paths      = ['lib']

  s.rdoc_options     = ['--main', 'README.md']
  s.extra_rdoc_files = ['LICENSE', 'README.md', 'NEWS.md']

  s.add_runtime_dependency('nanoc', '>= 3.6.7', '< 5.0.0')
  s.add_runtime_dependency('typohero', '>= 0.0.4', '< 1.0.0')
  s.add_development_dependency('bundler', '~> 1.5')
end
