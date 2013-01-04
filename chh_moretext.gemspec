# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chh_moretext/version'

Gem::Specification.new do |gem|
  gem.name          = "chh_moretext"
  gem.version       = ChhMoretext::VERSION
  gem.date          = %q{2012-01-04}
  gem.authors       = ["CHH"]
  gem.email         = ["chh@chh.tw"]
  gem.description   = %q{Generate random Traditional Chinese text from Moretext API}
  gem.summary       = %q{Generate random Traditional Chinese text from Moretext API}
  gem.homepage = "https://github.com/chinghanho/chh-moretext"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
