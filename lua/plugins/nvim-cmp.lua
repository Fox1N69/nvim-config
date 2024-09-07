return {
    -- {
    --     "hrsh7th/nvim-cmp",
    --     dependencies = {
    --         "hrsh7th/cmp-emoji",
    --     },
    --     ---@param opts cmp.ConfigSchema
    --     opts = function(_, opts)
    --         local has_words_before = function()
    --             unpack = unpack or table.unpack
    --             local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    --             return col ~= 0
    --                 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    --         end
    --
    --         local cmp = require("cmp")
    --
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e1e2e" })
    --         opts.window = {
    --             completion = {
    --                 border = "rounded", -- Можно использовать "none", "rounded" или другие стили
    --                 winhighlight = "Normal:NormalFloat", -- Поменяйте на нужное состояние
    --                 col_offset = 0,
    --                 side_padding = 1,
    --             },
    --             documentation = {
    --                 border = "rounded",
    --                 winhighlight = "Normal:NormalFloat",
    --             },
    --         }
    --
    --         opts.mapping = vim.tbl_extend("force", opts.mapping, {
    --             ["<Tab>"] = cmp.mapping(function(fallback)
    --                 if cmp.visible() then
    --                     cmp.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })
    --                 elseif require("luasnip").expand_or_jumpable() then
    --                     vim.fn.feedkeys(
    --                         vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true),
    --                         ""
    --                     )
    --                 else
    --                     fallback()
    --                 end
    --             end, {
    --                 "i",
    --                 "s",
    --             }),
    --             ["<C-J>"] = cmp.mapping(function(fallback)
    --                 if cmp.visible() then
    --                     cmp.select_next_item()
    --                 elseif vim.snippet.active({ direction = -1 }) then
    --                     vim.schedule(function()
    --                         vim.snippet.jump(-1)
    --                     end)
    --                 else
    --                     fallback()
    --                 end
    --             end, { "i", "s" }),
    --             ["<C-K>"] = cmp.mapping(function(fallback)
    --                 if cmp.visible() then
    --                     cmp.select_prev_item()
    --                 elseif vim.snippet.active({ direction = -1 }) then
    --                     vim.schedule(function()
    --                         vim.snippet.jump(-1)
    --                     end)
    --                 else
    --                     fallback()
    --                 end
    --             end, { "i", "s" }),
    --         })
    --     end,
    -- },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-emoji",
            "onsails/lspkind.nvim", -- Добавляем lspkind для значков
        },
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0
                    and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end

            local cmp = require("cmp")
            local lspkind = require("lspkind") -- Подключаем lspkind

            -- Настройки окна
            opts.window = {
                completion = {
                    border = "rounded", -- Можно использовать "none", "rounded" или другие стили
                    winhighlight = "Normal:NormalFloat", -- Поменяйте на нужное состояние
                    col_offset = 0,
                    side_padding = 1,
                },
                documentation = {
                    border = "rounded",
                    winhighlight = "Normal:NormalFloat",
                },
            }

            opts.mapping = vim.tbl_extend("force", opts.mapping, {
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })
                    elseif require("luasnip").expand_or_jumpable() then
                        vim.fn.feedkeys(
                            vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true),
                            ""
                        )
                    else
                        fallback()
                    end
                end, { "i", "s" }),

                ["<C-J>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif vim.snippet.active({ direction = -1 }) then
                        vim.schedule(function()
                            vim.snippet.jump(-1)
                        end)
                    else
                        fallback()
                    end
                end, { "i", "s" }),

                ["<C-K>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif vim.snippet.active({ direction = -1 }) then
                        vim.schedule(function()
                            vim.snippet.jump(-1)
                        end)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            })
        end,
    },
}
