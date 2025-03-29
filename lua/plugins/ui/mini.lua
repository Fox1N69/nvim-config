local my_prefix = function(fs_entry)
    -- Prefer 'mini.icons'
    if _G.MiniIcons ~= nil then
        local category = fs_entry.fs_type == "directory" and "directory" or "file"
        local icon, hl = _G.MiniIcons.get(category, fs_entry.name)
        return icon .. " ", hl
    end

    if fs_entry.fs_type == "directory" then
        return " ", "MiniFilesDirectory"
    end
    local has_devicons, devicons = pcall(require, "nvim-web-devicons")
    if not has_devicons then
        return " ", "MiniFilesFile"
    end

    local icon, hl = devicons.get_icon(fs_entry.name, nil, { default = false })
    return (icon or "") .. " ", hl or "MiniFilesFile"
end

require("mini.files").setup({ content = { prefix = my_prefix } })

return {
    {
        "echasnovski/mini.files",
        version = false,
        config = function()
            require("mini.files").setup({
                windows = {
                    preview = true,
                    width_focus = 40,
                },
                options = {
                    use_as_default_explorer = true,
                    custom_indicators = {},
                },
            })
        end,
    },

    {
        "echasnovski/mini.icons",
        opts = {},
        lazy = true,
        specs = {
            { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
        },
        init = function()
            package.preload["nvim-web-devicons"] = function()
                require("mini.icons").mock_nvim_web_devicons()
                return package.loaded["nvim-web-devicons"]
            end
        end,
    },
}
