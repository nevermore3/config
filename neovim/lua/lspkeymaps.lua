local lsp_keybinds = {}
lsp_keybinds.set_keymap = function (bufnr)
    -- 跳转到声明
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", {silent = true, noremap = true})
    -- 跳转到定义
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {silent = true, noremap = true})
    -- 显示注释文档
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", {silent = true, noremap = true})
    -- 跳转到实现
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {silent = true, noremap = true})
    -- 跳转到引用位置
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {silent = true, noremap = true})
    -- 以浮窗形式显示错误
    vim.api.nvim_buf_set_keymap(bufnr, "n", "go", "<cmd>lua vim.diagnostic.open_float()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", {silent = true, noremap = true})
    -- format
    vim.api.nvim_buf_set_keymap(bufnr, "n", "ff", "<cmd>lua vim.lsp.buf.format()<CR>", {silent = true, noremap = true})
end
return lsp_keybinds

