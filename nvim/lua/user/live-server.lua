local M = {
  'barrett-ruth/live-server.nvim',
  build = 'pnpm add -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  config = true
}

function M.config() 
  require('live-server').setup(opts)
end
  
return M
