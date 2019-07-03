# frozen_string_literal: true

require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module <%= @application %>
  class Application < Rails::Application    
    EIVO.configure(self)

    config.i18n.available_locales = %w(en fr)
  end
end
