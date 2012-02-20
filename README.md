# Guard::PHPMD

This guard will run [PHP Mess Detector](http://phpmd.org) for you automatically when files are modified.

## Install

Make sure you have [guard](http://github.com/guard/guard) and [phpmd](http://phpmd.org/download/index.html) installed.

Install the gem with:

    gem install guard-phpmd

Or add it to your Gemfile:

    gem 'guard-phpmd'

And then add a basic setup to your Guardfile:

    guard init phpmd

## Options

* `:path   # default => "."`

Set the working directory (useful when using relative paths used in the rules file)

* `:rules   # default => "pmd-rules.xml"`

Path to the rules file.

### Example

	guard 'phpmd', :path => 'path/to/PHPMD', :rules => 'path/to/pmd-rules.xml' do
		watch(%r{.*\.php$})
	end