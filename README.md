# My customization for kickstart.nvim

The content of .config/nvim/custom, using *kickstart.nvim*.

- No editing in nvim/init.lua (kickstart.nvim), except enable `{ import = 'custom.plugins' },`.
- Separate plugin-configurations into individual files: `custom/plugin-configs/`.
- `custom/plugin/init.lua` builds a list of plugins and configs having a predefined list.


Install plugin: put file for plugin in `custom/plugin-configs/`, add the name of the file to `custom/plugin/init.lua`.

Example of `custom/plugin-configs/`, add the name of the file to `custom/plugin/init.lua`.

```
[...]
  -- List of configuration files in the plugin-configs directory
  local configs = {
    'nvim-basic-settings',
    -- Add more plugin configuration files here
  }
[...]
```

Example of `custom/plugin-configs/`, add the name of the file to `custom/plugin/init.lua`.
```
return {
  'fmc-sh/nvim-basic-settings',
  config = function()
    require('nvim-basic-settings').setup()
  end,
}
```
