-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- return {
--   {
--     --    'fmc-sh/nvim-plugin-nexus',
--   },
-- }

-- lua/plugin-list.lua

-- Utility function to load all plugin configurations
local function load_plugins()
  local plugins = {}

  -- List of configuration files in the plugin-configs directory
  local configs = {
    'nvim-basic-settings',
    -- Add more plugin configuration files here
  }

  -- Require each configuration file and add it to the plugins table
  for _, config in ipairs(configs) do
    table.insert(plugins, require('custom.plugin-configs.' .. config))
  end

  return plugins
end

-- Return the list of plugins to be used by Lazy
return load_plugins()
