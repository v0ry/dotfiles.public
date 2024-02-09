local M = {
  'barrett-ruth/live-server.nvim',
  build = 'pnpm add -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  config = true
}

function M.config() 
end
  
return M
