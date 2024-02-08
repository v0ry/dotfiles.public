local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "c", "cpp", "css", "html", "latex" },
    highlight = { enable = true },
    auto_install = true,
    sync_install = false,
    indent = { enable = true },
  }
end

return M
