# Be sure to restart your server when you modify this file.

MyApp::Application.config.session_store :cookie_store, key: "_#{Rails.application.class.parent_name}_session"
