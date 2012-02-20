require 'guard'
require 'guard/guard'

module Guard
	class PHPMD < Guard

  		VERSION = '0.0.1'

		DEFAULT_OPTIONS = {
		  :path => '.',
	      :rules => 'pmd-rules.xml'
	    }

	    def initialize(watchers = [], options = {})
	      defaults = DEFAULT_OPTIONS.clone
	      @options = defaults.merge(options)
	      super(watchers, @options)
	    end

	    def run_on_change(paths)
			@options[:rules] = File.expand_path @options[:rules]
			paths.each do |path|
				path = File.expand_path path
				Dir.chdir(@options[:path]) do
					results = `phpmd #{path} text #{@options[:rules]}`
					if $?.to_i > 0 then
						::Guard::Notifier.notify(results, :title => 'PHP Mess Detector', :image => :failed)
						puts results
					end
				end
			end
	    end
	end
end