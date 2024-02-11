local M = {
  "L3MON4D3/LuaSnip", -- Snippets engine
  event = "InsertEnter",
  dependencies = {
    "rafamadriz/friendly-snippets",
  },
}

function M.config()
    require("luasnip.loaders.from_lua").load {
        paths = {
            vim.fn.expand("~/.config/nvim/snippets"),
            vim.fn.expand("~/.config/nvim/snippets/latex"),
        },
    }
      require("luasnip.loaders.from_lua").load({
        paths = {
          vim.fn.expand("~/.config/nvim/lua/user/luasnip-latex-snippets.lua")
        },
    })
    require("luasnip/loaders/from_vscode").lazy_load()
end

return M
