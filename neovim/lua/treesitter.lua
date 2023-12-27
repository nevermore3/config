-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "c",
    "cpp",
    "java",
    "json",
    "go",
    "yaml",
    "markdown",
    "markdown_inline",
    "bash",
    "lua",
    "vim"
  },
  -- auto install above language parsers
  auto_install = true,

  -- enable rainbow parentheses
  rainbow = {enable = true},
  -- enable tressitter playground
  playground = { enable = true },
  -- enable autotag
  autotag = { enable = true },
})
