return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "jose-elias-alvarez/typescript.nvim",
        init = function()
            require("lazyvim.util").lsp.on_attach(function(_, buffer)
      -- stylua: ignore
      vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
                vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
            end)
        end,
    },
    ---@class PluginLspOpts
    opts = {
        servers = {
            rust_analyzer = {
                settings = {
                    ["rust-analyzer"] = {
                        assist = {
                            importMergeBehavior = "last",
                            importPrefix = "by_self",
                        },
                        cargo = {
                            allFeatures = true,
                        },
                        diagnostics = {
                            utimate = false,
                            enable = false,
                        },
                        hints = {
                            enable = false,
                            assignVariableTypes = false,
                            chainReceiverTypes = false,
                            closureReturnTypes = false,
                            discriminantTypes = false,
                            expressionAdjustmentHints = {
                                enable = false,
                            },
                            implicitDrops = false,
                            parameterHints = false,
                            rangeExclusive = false,
                            typeHints = false,
                        },
                        inlayHints = {
                            enabled = false,
                            chainingHints = false,
                            parameterHints = false,
                            typeHints = false,
                            hideNamedConstructorHints = true,
                            maxLength = 0,
                            hideClosureInitialization = true,
                            renderColons = false,
                        },
                    },
                },
            },
            clangd = {
                settings = {
                    clangd = {
                        tabSize = 4,
                    },
                },
            },
            gopls = {
                settings = {
                    gopls = {
                        gofumpt = true,
                        codelenses = {
                            gc_details = false,
                            generate = true,
                            regenerate_cgo = true,
                            run_govulncheck = true,
                            test = true,
                            tidy = true,
                            upgrade_dependency = true,
                            vendor = true,
                        },
                        hints = {
                            assignVariableTypes = false,
                            compositeLiteralFields = false,
                            compositeLiteralTypes = false,
                            constantValues = false,
                            functionTypeParameters = false,
                            parameterNames = false,
                            rangeVariableTypes = false,
                        },
                        analyses = {
                            fieldalignment = true,
                            nilness = true,
                            unusedparams = true,
                            unusedwrite = true,
                            useany = true,
                        },
                        usePlaceholders = true,
                        completeUnimported = true,
                        staticcheck = true,
                        directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
                        semanticTokens = true,
                        buildFlags = { "-tags=!wireinject" },
                    },
                },
            },
        },
        setup = {
            gopls = function(_, opts)
                -- workaround for gopls not supporting semanticTokensProvider
                -- https://github.com/golang/go/issues/54531#issuecomment-1464982242
                LazyVim.lsp.on_attach(function(client, _)
                    if not client.server_capabilities.semanticTokensProvider then
                        local semantic = client.config.capabilities.textDocument.semanticTokens
                        client.server_capabilities.semanticTokensProvider = {
                            full = true,
                            legend = {
                                tokenTypes = semantic.tokenTypes,
                                tokenModifiers = semantic.tokenModifiers,
                            },
                            range = true,
                        }
                    end
                end, "gopls")
                -- end workaround
            end,
            rust_analyzer = function(_, opts)
                -- Установка дополнительных конфигураций для rust-analyzer, если нужно
            end,
        },
    },
}
