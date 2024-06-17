local config = {}

local defaults = {
    transparent = false,
    italic_comments = false,
    underline_links = false,
    color_overrides = {},
    group_overrides = {},
    disable_nvimtree_bg = true,
    terminal_colors = true,
}

config.opts = {}

---@param user_opts? table
config.setup = function(user_opts)
    -- backwards compatibility: let users still set settings with global vars
    local global_settings_opts = vim.tbl_extend('force', defaults, {
        transparent = false,
        italic_comments = false,
        underline_links = false,
        disable_nvimtree_bg = false,
    })

    -- but override global vars settings with setup() settings
    config.opts = vim.tbl_extend('force', global_settings_opts, user_opts or {})

    -- setting transparent to true removes the default background
    if config.opts.transparent then
        config.opts.color_overrides.Back = 'NONE'
    end
end

-- initialize config
config.setup()

return config
