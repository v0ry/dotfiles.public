local M = {
  "lervag/vimtex",
}

function M.config()
  vim.g.vimtex_view_method = "skim"
  vim.g.vimtex_compiler_method = "latexrun"
end

 return M
