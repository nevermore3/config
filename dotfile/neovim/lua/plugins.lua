-- Install Packer automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()


-- Reload configurations if we modify plugins.lua
-- Hint
--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- Install plugins here - `use ...`
-- Packer.nvim hints
--     after = string or list,           -- Specifies plugins to load before this plugin. See "sequencing" below
--     config = string or function,      -- Specifies code to run after this plugin is loaded
--     requires = string or list,        -- Specifies plugin dependencies. See "dependencies".
--     ft = string or list,              -- Specifies filetypes which load this plugin.
--     run = string, function, or table, -- Specify operations to be run after successful installs/updates of a plugin
return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        ---------------------------------------
        -- NOTE: PUT YOUR THIRD PLUGIN HERE --
        ---------------------------------------
        -- file explorer
        use("nvim-tree/nvim-tree.lua")
        -- vs-code like icons
        use("nvim-tree/nvim-web-devicons")
        -- whichkey---not use yet
        use("folke/which-key.nvim")

        -- fuzzy find 
        use("nvim-lua/plenary.nvim") -- Lua functions that telescope plugin use
        use("nvim-telescope/telescope.nvim")

        -- syntax highlight
        use({
            "nvim-treesitter/nvim-treesitter",
            run = function()
                local ts_update = require("nvim-treesitter.install").update({with_sync = true})
                ts_update()
            end,
        })

        -- extension for nvim-treesitter---
        use("HiPhish/nvim-ts-rainbow2")
        use("nvim-treesitter/playground")
        use("windwp/nvim-ts-autotag")


        -- autocompletion
        use("hrsh7th/nvim-cmp") -- completion plugin
        use("hrsh7th/cmp-buffer") -- source for text in buffer
        use("hrsh7th/cmp-path") -- source for file system paths-- snippets
        use("L3MON4D3/LuaSnip") -- snippet engine
        use("saadparwaiz1/cmp_luasnip") -- for autocompletion
        use("rafamadriz/friendly-snippets") -- useful snippets

        -- autopair
        use("windwp/nvim-autopairs")
        -- status line
        use("nvim-lualine/lualine.nvim")

        -- thema-----vscode
        use("Mofiqul/vscode.nvim")

        --gitblame-----------
        use("f-person/git-blame.nvim")

        --lspconfig
        use ("williamboman/mason.nvim")
        use ("williamboman/mason-lspconfig.nvim")
        use({"neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer"})

        -- Automatically set up your configuration after cloning packer.nvim
        -- display symbol. class. function
        use("stevearc/aerial.nvim")

        --git diff-------not install yet
        use("sindrets/diffview.nvim")

        --gitsigns---show the changes to the current file
        use("lewis6991/gitsigns.nvim")

        -- tmux & split window navigation
        use("christoomey/vim-tmux-navigator")
        -- Put this at the end after all plugins
        if packer_bootstrap then
            require('packer').sync()
        end
    end)

