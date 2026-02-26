# frozen_string_literal: true

# name: Krabit Hire
# about: Official hiring plugin for KRABIT
# meta_topic_id: TODO
# version: 0.0.1
# authors: Techhive Technologies
# url: https://krabit.co
# required_version: 2.7.0

enabled_site_setting :krabit_hire_enabled

module ::KrabitHire
  PLUGIN_NAME = "KrabitHire"
end

require_relative "lib/my_plugin_module/engine"

after_initialize do
  module ::KrabitHire
    class Engine < ::Rails::Engine
      engine_name "krabit_hire"
      isolate_namespace KrabitHire
    end
  end

  KrabitHire::Engine.routes.draw do
    get "/" => "hire#index"
  end

  Discourse::Application.routes.append do
    mount ::KrabitHire::Engine, at: "/hire"
  end
end
