require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "cloudmaster"
    gem.summary = %Q{Creates, terminates, and monitors Amazon EC2 instances. Creates more instance to meet increased demand, and terminates them when they are no longer needed. Any number of pools of instances may be managed. Provides periodic status reports. Three policies are provided: a fixed size pool policy, a job-oriented batch policy, and a resource-limited stateful policy. The user can define additional policies. To get started, see http://code.google.com/p/cloudmaster/wiki/Introduction}
    gem.email = "mick@staugaard.com"
    gem.homepage = "http://github.com/staugaard/cloudmaster"
    gem.authors = ["cchayden", "vadimj", "Mick Staugaard"]
    gem.require_paths = ["lib", "app"]

    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION.yml')
    config = YAML.load(File.read('VERSION.yml'))
    version = "#{config[:major]}.#{config[:minor]}.#{config[:patch]}"
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "cloudmaster #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

