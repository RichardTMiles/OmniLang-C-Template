# bindings/ruby/extconf.rb
require 'mkmf'

# Specify the directory containing the carbon.h file
dir_config('carbon', '../../include', '../../src')

# Create the Makefile
create_makefile('carbon/carbon')