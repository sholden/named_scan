# -*- encoding: utf-8 -*-
require File.expand_path('../lib/named_scan/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Scott Holden"]
  gem.email         = ["scott@sshconnection.com"]
  gem.description   = %q{Scan strings with named captures}
  gem.summary       = %q{String#named_scan will return hashes of your named captures rather than arrays}
  gem.homepage      = "http://github.com/sholden/named_scan"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "named_scan"
  gem.require_paths = ["lib"]
  gem.version       = NamedScan::VERSION
end
