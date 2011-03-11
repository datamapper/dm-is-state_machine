# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-is-state_machine}
  s.version = "1.1.0.rc3"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["David James"]
  s.date = %q{2011-03-01}
  s.description = %q{DataMapper plugin for creating state machines}
  s.email = %q{djwonk [a] collectiveinsight [d] net}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "dm-is-state_machine.gemspec",
    "lib/dm-is-state_machine.rb",
    "lib/dm-is-state_machine/is/data/event.rb",
    "lib/dm-is-state_machine/is/data/machine.rb",
    "lib/dm-is-state_machine/is/data/state.rb",
    "lib/dm-is-state_machine/is/dsl/event_dsl.rb",
    "lib/dm-is-state_machine/is/dsl/state_dsl.rb",
    "lib/dm-is-state_machine/is/state_machine.rb",
    "spec/examples/invalid_events.rb",
    "spec/examples/invalid_states.rb",
    "spec/examples/invalid_transitions_1.rb",
    "spec/examples/invalid_transitions_2.rb",
    "spec/examples/light_switch.rb",
    "spec/examples/slot_machine.rb",
    "spec/examples/traffic_light.rb",
    "spec/integration/inheritance_spec.rb",
    "spec/integration/invalid_events_spec.rb",
    "spec/integration/invalid_states_spec.rb",
    "spec/integration/invalid_transitions_spec.rb",
    "spec/integration/slot_machine_spec.rb",
    "spec/integration/traffic_light_spec.rb",
    "spec/rcov.opts",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "spec/unit/data/event_spec.rb",
    "spec/unit/data/machine_spec.rb",
    "spec/unit/data/state_spec.rb",
    "spec/unit/dsl/event_dsl_spec.rb",
    "spec/unit/dsl/state_dsl_spec.rb",
    "spec/unit/state_machine_spec.rb",
    "tasks/spec.rake",
    "tasks/yard.rake",
    "tasks/yardstick.rake"
  ]
  s.homepage = %q{http://github.com/datamapper/dm-is-state_machine}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{datamapper}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{DataMapper plugin for creating state machines}
  s.test_files = [
    "spec/examples/invalid_events.rb",
    "spec/examples/invalid_states.rb",
    "spec/examples/invalid_transitions_1.rb",
    "spec/examples/invalid_transitions_2.rb",
    "spec/examples/light_switch.rb",
    "spec/examples/slot_machine.rb",
    "spec/examples/traffic_light.rb",
    "spec/integration/inheritance_spec.rb",
    "spec/integration/invalid_events_spec.rb",
    "spec/integration/invalid_states_spec.rb",
    "spec/integration/invalid_transitions_spec.rb",
    "spec/integration/slot_machine_spec.rb",
    "spec/integration/traffic_light_spec.rb",
    "spec/spec_helper.rb",
    "spec/unit/data/event_spec.rb",
    "spec/unit/data/machine_spec.rb",
    "spec/unit/data/state_spec.rb",
    "spec/unit/dsl/event_dsl_spec.rb",
    "spec/unit/dsl/state_dsl_spec.rb",
    "spec/unit/state_machine_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dm-core>, ["~> 1.1.0.rc3"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.1"])
    else
      s.add_dependency(%q<dm-core>, ["~> 1.1.0.rc3"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_dependency(%q<rspec>, ["~> 1.3.1"])
    end
  else
    s.add_dependency(%q<dm-core>, ["~> 1.1.0.rc3"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rake>, ["~> 0.8.7"])
    s.add_dependency(%q<rspec>, ["~> 1.3.1"])
  end
end

