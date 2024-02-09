local M = {
  "lervag/vimtex",
}

function M.config()
  vim.g.vimtex_view_method = "skim"
  vim.g.vimtex_compiler_method = "latexmk"
  
  -- Add syntax hightlighting for Vim Tex
  vim.cmd [[" VimTeX highlight groups
    hi texCmd guifg=#ad3da4 guibg=NONE gui=NONE ctermfg=127 ctermbg=NONE cterm=NONE
    hi! link texMathEnvArgName texEnvArgName
    hi! link texMathZone LocalIdent
    hi! link texMathZoneEnv texMathZone
    hi! link texMathZoneEnvStarred texMathZone
    hi! link texMathZoneX texMathZone
    hi! link texMathZoneXX texMathZone
    hi! link texMathZoneEnsured texMathZone

    " Small tweaks
    hi! link QuickFixLine Normal
    hi! link qfLineNr Normal
    hi! link EndOfBuffer LineNr
    hi! link Conceal LocalIdent
  ]]
end

 return M
