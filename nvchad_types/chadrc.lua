---@meta

---@class ChadrcConfig
---@field ui? UIConfig
---@field plugins? table<PluginName, PluginConfig>
---@field mappings? MappingsConfig

---@class UIConfig
---@field hl_add? HLTable List of highlight groups to add. Should be highlights that is not a part of base46 definition. Check [base46 integrations](https://github.com/NvChad/base46/tree/master/lua/base46/integrations) for more information
---@field hl_override? HLTable List of highlight groups that will override the highlight inside each integration. Check [base46 integrations](https://github.com/NvChad/base46/tree/master/lua/base46/integrations) for more information
---@field theme_toggle? {[1]: string, [2]: string} the theme you want to toggle between. One of them has to be the same with the one set in `theme`
---@field transparency? boolean Whether to compiled with transparent background or not
---@field theme? string theme to use. List of theme can be find on [base46 Repo](https://github.com/NvChad/base46/tree/master/lua/base46/themes)
---@field cmp? NvCmpConfig options for UI of nvim-cmp popup menu
---@field statusline? NvStatusLineConfig options for NvChad custom statusline
---@field tabufline? NvTabufLineConfig options for NvChad custom tabline
---@field nvdash? NvDashConfig Options for NvChad custom dashboard menu
---@field cheatsheet? NvCheatSheetConfig Options for NvChad cheatsheet menu

---@alias HLTable table<string, Base46HLGroups>

---@alias PluginName string

---@class PluginConfig
---@field override_options? table|fun():table Table containing options that you want to override for a plugin inside NvChad. This has no effect for plugins not installed by default by NvChad (e.g. bufferline.nvim)
---@field rm_default_opts? boolean Whether to only use your custom plugin config or not. If true, override_options will not have any effect
---@field config? fun() Function to be called after loading the plugin
---@field event? string|string[] This plugin will be loaded when the Vim Event(s) happens. For more information, see `:h events`, `:h diagnostic-events`, `:h lsp-events`
---@field cmd? string|string[] The plugin will be load when the command(s) is triggered
---@field ft? string|string[] Specifies filetypes that will load this plugin
---@field keys? string|string[] Specifies sequence of keybinds that will load this plugin
---@field commit? string Specify to use this plugin to use this specified commit id

--- List of keymaps that is part of `core/mappings.lua` that will be removed
---@alias DisabledTable {[VimKeymapMode]: DisabledKeymaps}

---@alias DisabledKeymaps {[string]: '""'|false}

---@alias MappingsConfig {disabled: DisabledTable, [string]: MappingsTable}

---@alias MappingsTable {[VimKeymapMode]: table<lhs, KeymapConfig>}

---@alias lhs string

---@class KeymapConfig
---@field [1] string|fun() A Vimscript string or a Lua function. `rhs` of the keymap
---@field [2] string Description for the keymap
---@field [3] NvKeymapOpts? List of additional options for the keymap
