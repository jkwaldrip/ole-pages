# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ole_pages/version'

Gem::Specification.new do |spec|
  spec.name          = "ole-pages"
  spec.version       = OlePages::VERSION
  spec.authors       = ["Jain Waldrip"]
  spec.email         = ["jkwaldri@iu.edu"]
  spec.summary       = %q{Testing Page-Object with OLE}
  spec.description   = %q{Testing the Page-Object gem for writing Kuali OLE tests}
  spec.homepage      = ""
  spec.license       = "ECLv2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "headless"
  spec.add_dependency "rspec","~> 2.14"
  spec.add_dependency "net-http-persistent"
  spec.add_dependency "numerizer"
  spec.add_dependency "chronic"
  spec.add_dependency "marc"
  spec.add_dependency "cucumber"
  spec.add_dependency "watir-webdriver"
  spec.add_dependency "page-object"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
