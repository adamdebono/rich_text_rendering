require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_cable/engine'
# require 'sprockets/railtie'

module RichTextRendering
  class Application < Rails::Application
    config.load_defaults 6.0
  end
end
