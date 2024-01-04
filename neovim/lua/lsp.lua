require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup({
-- A list of servers to automatically install if they're not already installed
    ensure_installed = { 'gopls', 'lua_ls'},
})


local lsp_set_keymap = require("lspkeymaps")
local on_attach = function(_, bufnr)
    lsp_set_keymap.set_keymap(bufnr)
end


local lspconfig = require('lspconfig')
lspconfig.ccls.setup {
  init_options = {
    cache = {
      directory = ".ccls-cache";
    };
  },
  cmd = {"/home/mingquan.ji/.local/share/nvim/lsp_servers/ccls/bin/ccls", "--log-file=/tmp/ccls.log"},
  on_attach = on_attach,
}



