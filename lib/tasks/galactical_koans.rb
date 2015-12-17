require_relative './rake_helpers.rb'
include RakeHelpers

require 'yaml'
DESCRIPTIONS = YAML.load_file('lib/tasks/stage_descriptions.yml')

task galaxy: 'galaxy:all'

namespace :galaxy do
  stages = [:alpha, :beta, :gamma, :delta, :epsilon]

  task :all do
    puts "Expanding the Galaxy".colourize.space(3)

    stages.each do |stage|
      Rake::Task["galaxy:#{stage}"].invoke
    end
  end
  
  require 'rspec/core/rake_task'
  stages.each do |stage|

    RSpec::Core::RakeTask.new(stage) do |t|
      puts "========= STAGE #{stage.upcase} =========".space(1)
      puts DESCRIPTIONS[stage]
      puts

      t.rspec_opts = "--tag stage::#{stage}"
      t.verbose = false
      t.fail_on_error = true
    end

  end
end

namespace :db do

  task :create do
    `psql --command 'create database galactical_koans;'`
  end

  task :drop do
    `psql --command 'drop database galactical_koans;'`
  end

  task reset: [:drop, :create]
end

