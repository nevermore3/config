require('plugins')
require('lsp')
require('options')
require('keymaps')
require('autopairs')
require('gitsign')
require('whichkey')

require("aerial").setup({
  backends = { "treesitter", "lsp", "markdown", "man" },
  layout = {
    -- These control the width of the aerial window.
    -- They can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
    -- min_width and max_width can be a list of mixed types.
    -- max_width = {40, 0.2} means "the lesser of 40 columns or 20% of total"
    max_width = { 40, 0.2 },
    width = nil,
    min_width = 10,

    -- key-value pairs of window-local options for aerial window (e.g. winhl)
    win_opts = {},

    -- Determines the default direction to open the aerial window. The 'prefer'
    -- options will open the window in the other direction *if* there is a
    -- different buffer in the way of the preferred direction
    -- Enum: prefer_right, prefer_left, right, left, float
    default_direction = "prefer_right",

    -- Determines where the aerial window will be opened
    --   edge   - open aerial at the far right/left of the editor
    --   window - open aerial to the right/left of the current window
    placement = "window",

    -- When the symbols change, resize the aerial window (within min/max constraints) to fit
    resize_to_content = true,

    -- Preserve window size equality with (:help CTRL-W_=)
    preserve_equality = false,
  },
  attach_mode = "window",
  filter_kind = {
    "Class",
    "Constructor",
    "Enum",
    "Function",
    "Interface",
    "Module",
    "Method",
    "Struct",
  },

  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
})

require('treesitter')
require('nvim-cmp')
require('thema')



require('gitblame').setup({
    enabled = true,
})

-- jmq-----------nvim-tree---config----
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  git = {
    enable = true
  },
})
-- jmq-----------nvim-tree---config----

require('lualine').setup({
    sections = {
        lualine_c = {{'filename', path = 1}}
    },
    options = {
        -- ...
        theme = 'vscode',
        -- ...
    },
})

