-- Breadcrumbs is a plugin that works with nvim-navic to provide context about your code in the winbar. 
local M = {
  "LunarVim/breadcrumbs.nvim",
}

function M.config()
  require("breadcrumbs").setup()
end

return M
