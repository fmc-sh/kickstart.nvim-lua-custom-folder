# My customization for kickstart.nvim


The content of .config/nvim/custom, using *kickstart.nvim*.

- No editing in nvim/init.lua (kickstart.nvim), except enable `{ import = 'custom.plugins' },`.
- Separate plugin-configurations into individual files: `custom/plugin-configs/`.
- `custom/enabled-plugins.lua` builds a list of plugins and configs having a predefined list.


Install plugin: put file for plugin in `custom/plugin-configs/`, add the name of the file to `custom/plugin/init.lua`.

Example `custom/enabled-plugins.lua`:

```
-- List of plugin configuration files to be loaded
return {
  'treesitter',
  'nvim-basic-settings',
  -- Add more plugin configuration files here
}
```

Example `custom/plugin-configs/nvim-basic-settings.lua`:
```
return {
  'fmc-sh/nvim-basic-settings',
  config = function()
    require('nvim-basic-settings').setup()
  end,
}
```


## Maybe

- tpope/vim-rsi:
- folke/trouble.nvim
- nvimtools/none-ls.nvim
- pocco81/auto-save.nvim
- rmagatti/auto-session
- or mini.session 
- chrisgrieser/nvim-early-retirement
- Neogit and Diffview
