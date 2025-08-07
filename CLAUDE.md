# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a LazyVim-based Neovim configuration written in Lua. The configuration follows LazyVim conventions and is structured for easy maintenance and extension.

## Architecture

### Core Structure
- `init.lua` - Entry point that bootstraps lazy.nvim plugin manager
- `lua/config/` - Core configuration files
  - `lazy.lua` - Plugin manager configuration and spec imports
  - `options.lua` - Neovim options (tabstop=4, shiftwidth=4, telescope as picker, blink enabled)
  - `keymaps.lua` - Custom keymaps (Go tag operations, group creation)
  - `autocmds.lua` - Auto-commands
  - `font.lua` - Font configuration

### Plugin Organization
Plugins are modularized by category in `lua/plugins/`:
- `coding/` - Development tools (blink completion, mason LSP installer, lazydev)
- `lsp/` - Language server configurations (golang with gopher.nvim, rust, nvim-lspconfig)
- `ui/` - Interface plugins (catppuccin colorscheme, bufferline, lualine, alpha dashboard, mini.nvim, dropbar, todo-comments)
- `render/` - Rendering plugins (render-markdown)
- `init.lua` - Base plugins (telescope, mini.nvim, volt, minty)

### Key Configuration Details
- Uses Catppuccin colorscheme with transparent background and custom color overrides
- Configured for 4-space indentation
- Telescope as the picker with horizontal layout
- Blink completion enabled via `vim.g.lazyvim_blink_main = true`
- Go development support through gopher.nvim with custom keymaps (`<leader>cta`, `<leader>ctd`)
- Rust support with dedicated LSP configuration

## Code Style

### Lua Configuration
- Files return configuration tables for lazy.nvim
- 4-space indentation (per stylua.toml)
- Column width of 120 characters
- Use of `opts = {}` for default plugin options
- Language-specific plugins use `ft` for filetype loading

### Plugin Patterns
- Lazy loading with `lazy = true` where appropriate
- Filetype-specific loading for language plugins
- Dependencies specified explicitly
- Custom keymaps defined within plugin specs where relevant

## Development Commands

### Formatting
- `stylua .` - Format Lua code (uses stylua.toml config)

### Plugin Management
- `:Lazy` - Open lazy.nvim plugin manager
- `:Lazy sync` - Update all plugins
- `:GoInstallDeps` - Install Go dependencies (gopher.nvim)

## Custom Features

### Go Development
- Gopher.nvim integration for Go tooling
- Custom keymaps:
  - `<leader>cta` - Add Go tags
  - `<leader>ctd` - Clear Go tags
  - `<Space><Tab>g` - Create group function

### UI Customization
- Transparent background enabled
- Custom Catppuccin color overrides with modified blues/yellows
- Rounded borders for lazy.nvim UI
- Horizontal telescope layout with top prompt position