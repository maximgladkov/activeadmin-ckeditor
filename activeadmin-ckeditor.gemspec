# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/activeadmin-ckeditor/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "activeadmin-ckeditor"
  gem.version       = Activeadmin::Ckeditor::VERSION
  gem.authors       = ["Maxim Gladkov"]
  gem.email         = ["contact@maximgladkov.com"]
  gem.description   = "Rich text editor for Active Admin using CKEditor."
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/maximgladkov/activeadmin-ckeditor"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "activeadmin"
  gem.add_dependency "paperclip"
  gem.add_dependency "ckeditor"
end
