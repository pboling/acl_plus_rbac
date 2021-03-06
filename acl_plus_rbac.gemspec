# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acl_plus_rbac/version'

Gem::Specification.new do |spec|
  spec.name          = "acl_plus_rbac"
  spec.version       = AclPlusRbac::VERSION
  spec.authors       = ["Kate Rhodes","Peter Boling"]
  spec.email         = ["masukomi@gmail.com","peter.boling@gmail.com"]
  spec.description   = %q{ACL & RBAC are different strategies of controlling what an authenticated user can do.  This is known as Authorization.}
  spec.summary       = %q{Implements ACL and RBAC authorization systems that can supplement any (separate!) authentication system.}
  spec.homepage      = "http://github.com/masukomi/acl_plus_rbac"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency(%q<reek>, [">= 1.2.8"])
  spec.add_development_dependency(%q<roodi>, [">= 2.1.0"])
  spec.add_development_dependency(%q<rake>, [">= 0"])
  spec.add_development_dependency "test-unit"
end
