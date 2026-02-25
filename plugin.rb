# frozen_string_literal: true

# name: Krabit Hire
# about: Official hiring plugin for KRABIT
# meta_topic_id: TODO
# version: 0.0.1
# authors: Techhive Technologies
# url: https://krabit.co
# required_version: 2.7.0

enabled_site_setting :plugin_name_enabled

module ::MyPluginModule
  PLUGIN_NAME = "KrabitHire"
end

require_relative "lib/my_plugin_module/engine"

after_initialize do
  # Code which should run after Rails has finished booting
end
