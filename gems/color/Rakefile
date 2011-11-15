require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
require './lib/terminal-display-colors'

Hoe.plugin :newgem

# Generate the Rake tasks
$hoe = Hoe.spec 'terminal-display-colors' do
  self.developer 'David Cole', 'davidcole@davidcole.net'
  self.post_install_message = 'PostInstall.txt'
  #self.rubyforge_name       = 'display-colors'
  self.readme_file          = 'README.rdoc'

end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }
