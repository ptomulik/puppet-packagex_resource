if RUBY_VERSION >= '1.9'
  require 'coveralls'
  Coveralls.wear! do
    add_filter 'spec/'
    add_filter 'lib/puppet/type/packagex.rb'
  end
end

require 'puppetlabs_spec_helper/module_spec_helper'
