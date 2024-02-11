local M = {
  "iurimateus/luasnip-latex-snippets.nvim",
  -- vimtex isn't required if using treesitter
  branch = "fix/lazy-loading",
  ft =
    {
    "tex",
    "markdown"
    },
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      event = "InsertEnter",
    },
   {
      "lervag/vimtex",
      event = "InsertEnter",
    },
  },
}

function M.config()
    require'luasnip-latex-snippets'.setup({ use_treesitter = true }) -- Config @ user.luasnip
end

return M
