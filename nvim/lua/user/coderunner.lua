local M = {
  -- {
  --  "CRAG666/code_runner.nvim",
  --   config = true
  -- }
    "michaelb/sniprun",
    branch = "master",

    -- build = "sh install.sh",
    build = 'sh install.sh 1', -- if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65
}

function M.config()
      require("sniprun").setup({
      interpreter_options = {
        C_original = {
             interpreter = "/Library/Developer/CommandLineTools/usr/bin/clang"
            },
        Cpp_original = {
                 interpreter = "/Library/Developer/CommandLineTools/usr/bin/clang++"
                  },
        }
    })
end
return M
