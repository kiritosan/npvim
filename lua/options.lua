vim.scriptencoding='utf-8'
vim.opt.encoding='utf-8'
vim.opt.fileencoding='utf-8'
vim.wo.number = true

vim.opt.title=true
vim.opt.autoindent=true
vim.opt.smartindent=true
vim.opt.hlsearch=true
vim.opt.backup=true -- TODO: ??
vim.opt.showcmd=false
vim.opt.cmdheight=1
vim.opt.laststatus=2 -- TODO: ?
vim.opt.expandtab=true -- TODO: ?
-- vim.opt.scrolloff=10
-- vim.opt.shell='zsh'
vim.opt.backupskip={ '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand='split'
vim.opt.ignorecase=true
vim.opt.smarttab=true -- TODO: ?
vim.opt.breakindent=true 
vim.opt.shiftwidth=2
vim.opt.tabstop=2 -- vim.opt.ts=2
vim.opt.wrap=false
vim.opt.backspace={ 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders -- TODO:??
vim.opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

--------------------------------------------------------------------------------------------------

-- vim.opt.cursorline=true
-- vim.opt.cursorcolumn=true
vim.opt.confirm=true
vim.opt.sw=2 -- TODO: ?
vim.opt.autoread=true -- TODO: ?
vim.opt.history=500

vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
