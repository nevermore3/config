-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)


-- nvimTree
--vim.keymap.set('n', '<F3>', ':NvimTreeToggle<CR>', opts)

-- telescope for search
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- find word in current file use telescope
--vim.keymap.set('n', '/', builtin.current_buffer_fuzzy_find, {})
-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
--vim.keymap.set('v', '<', '<gv', opts)
--vim.keymap.set('v', '>', '>gv', opts)

--show symbol function class
--vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
--gitsign--
--vim.keymap.set("n", "<leader>gj", "<cmd>Gitsigns next_hunk<CR>", {})
--vim.keymap.set("n", "<leader>gk", "<Cmd>Gitsigns prev_hunk<CR>", {})
