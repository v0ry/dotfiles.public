-- https://github.com/williamboman/mason-lspconfig.nvim
-- Installs LSPs pretier and eslint in binary format and put them on the path. All config comes from lspconfig
local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}

function M.config()
  local servers = {
    "cssls",
    "html",
    "tsserver",
    "pyright",
    "bashls",
    "jsonls",
    "clangd", -- for c/c++
    "emmet_language_server", -- html, css, jsonls
    "lua_ls",
    "marksman", -- markdown
    "lua_ls",
    "pyright", -- python 
  }

  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }

  require("mason-lspconfig").setup {
    ensure_installed = servers,
  }
end

return M
