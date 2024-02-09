-- Userd For Syntax Highlighting
-- https://linovox.com/nvim-treesitter-syntax-highlighting-in-neovim/
local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "c", "cpp", "css", "html", "javascript" },
    ignore_install = { "latex"}, -- Don't install parsers with filetypes in this list
    highlight = { enable = true, disable = { "latex" } }, -- Don't enable synxtax highlighting for latex
    auto_install = true,
    sync_install = false, -- install synchronously
    indent = { enable = true },
    rainbow = {
      enable = true,
      extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
      max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
  }
end

return M
