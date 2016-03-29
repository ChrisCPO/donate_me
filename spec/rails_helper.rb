ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)

require "rspec/rails"
require "shoulda/matchers"
require 'capybara-screenshot/rspec'

Dir[Rails.root.join("spec/support/**/*.rb")].sort.each { |file| require file }

Capybara::Screenshot.prune_strategy = :keep_last_run

module Features
  # Extend this module in spec/support/features/*.rb
  include Formulaic::Dsl
end

RSpec.configure do |config|
  config.include Features, type: :feature
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = false

  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord , type: :model)
end

ActiveRecord::Migration.maintain_test_schema!
Capybara.javascript_driver = :webkit
