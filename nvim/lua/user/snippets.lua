local M = {
    "iurimateus/luasnip-latex-snippets.nvim",
    ft = "tex",
    dependencies = {
      {
          "L3MON4D3/LuaSnip", -- Snippets engine
          event = "InsertEnter",
      },
      {
        "lervag/vimtex",
        event = "InsertEnter",
      },
  },
}

function M.config()
  config = function()
    require'user.luasnip-latex-snippets'.setu({ use_treesitter = true })
    -- or setup({ use_treesitter = true })
  end
end

return M
