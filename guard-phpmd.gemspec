# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/phpmd"

Gem::Specification.new do |s|
  s.name        = "guard-phpmd"
  s.version     = Guard::PHPMD::VERSION
  s.authors     = ["Patrik Henningsson"]
  s.email       = ["patrik.henningsson@gmail.com"]
  s.homepage    = "http://github.com/pahen/guard-phpmd"
  s.summary     = "Guard gem for running PHPMD"
  s.description = "Guard::PHPMD automatically runs PHP Mess Detector when watched files are modified."

  s.rubyforge_project = "guard-phpmd"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'guard', '>= 0.8.8'
end