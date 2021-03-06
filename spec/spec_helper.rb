$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'ankh'
require 'spec'
require 'spec/autorun'
require 'mocha'

require 'support/active_record_spec_helper'
Spec::Runner.configure do |config|
  include ActiveRecordSpecHelper
  
  config.before(:all) do
    create_tables
  end
  
  config.after(:all) do
    drop_tables
  end
  
  config.mock_with :mocha
end
