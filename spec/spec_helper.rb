require 'dm-core/spec/setup'
require 'dm-core/spec/lib/adapter_helpers'

require 'dm-is-state_machine'
require 'dm-migrations'

DataMapper::Spec.setup

Spec::Runner.configure do |config|
  config.extend(DataMapper::Spec::Adapters::Helpers)
end
