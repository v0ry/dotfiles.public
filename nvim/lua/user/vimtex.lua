local M = {
  "lervag/vimtex",
}

function M.config()
  vim.g.vimtex_view_method = "skim"
  vim.g.vimtex_compiler_method = "latexmk"
end

 return M
