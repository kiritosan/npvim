local map = vim.api.nvim_set_keymap
vim.g.mapleader=' '
vim.g.maplocalleader = ' '
options = { noremap = true }

map('', '<Space>', '<Nop>', options)
map('n','<ESC>','<cmd>noh <CR>', options)
map('n','<CR>','noh<CR><CR>', options)

------------------------------
-- Windows & Tabs & buffers --
------------------------------

-- Windows --
map('n','ss', ':split<Return><C-w>w', options)
map('n','sv', ':vsplit<Return><C-w>w', options)
-- Resize windows
map('n', '<C-Up>', ':resize -2<CR>', options)             -- Top resize
map('n', '<C-Down>', ':resize +2<CR>', options)           -- Bottom resize
map('n', '<C-Right>', ':vertical resize -2<CR>', options) -- Right resize
map('n', '<C-Left>', ':vertical resize +2<CR>', options)  -- Left resize
-- Move between windows
map('n', '<Space>','<C-w>w', options)
map('', 'sh','<C-w>h', options)
map('', 'sk','<C-w>k', options)
map('', 'sj','<C-w>j', options)
map('', 'sl','<C-w>l', options)

-- Tabs --
map('n', 'te', ':tabedit ', options)
map('n', '<S-h>', ':tabprevious<CR>', options)
map('n', '<S-l>', ':tabnext<CR>', options)

-- buffers --
map('n', '<C-n>', ':e ', options)   -- Open buffer
map('n', '<C-w>', ':bdelete<CR>', options)   -- Close buffer
map('n', '<A-h>', ':bprevious<CR>', options) -- Previous buffer
map('n', '<A-l>', ':bnext<CR>', options)     -- Next buffer
-- Close all buffer except the focused one
map('n', '<Leader>bac', ':silent w <BAR> :silent %bd <BAR> e#<CR>', options)

------------
-- Editor --
------------

map('i', 'jk', '<ESC>', options) -- Escape i mode
map('i', 'kj', '<ESC>', options) -- Escape i mode
-- powerful Substitude
map('n','S','ciw<C-r>0<ESC>', options)
-- better navigation
map('n', '<leader>a', '^', options)
map('n', '<leader>e', '$', options)
-- better navigate within insert mode
-- map('i', '<C-a>', '<ESC>^i', options)
map('i', '<C-e>', '<End>', options)
map('i', '<C-j>', '<Down>', options)
map('i', '<C-k>', '<Up>', options)
map('i', '<C-h>', '<Left>', options)
map('i', '<C-l>', '<Right>', options)
-- better save and exit
map('n', 'q', ':q<cr>', options)					-- Exit softly
map('i', '<C-s>', '<C-o>:w<CR>', options) -- Save
map('n', '<C-s>', ':w<CR>', options)      -- Save
map('n', '<C-q>', ':wq!<CR>', options)    -- Save and exit
-- TODO: ?
map('n', 'n', 'nzzzv', options) -- Better movement for next command
map('n', 'N', 'Nzzzv', options) -- Better movement for next command
-- TODO: ?
map('i', ',', ',<C-g>u', options) -- Undo break points
map('i', '.', '.<C-g>u', options) -- Undo break points
map('i', '!', '!<C-g>u', options) -- Undo break points
map('i', '?', '?<C-g>u', options) -- Undo break points
-- better copy and paste
map('v', '<C-c>', '"+y', options)      -- Copy
-- map('n', 'Y', 'y$', options)           -- Copy line from cursor
map('i', '<C-v>', '<Esc>"+p', options) -- Paste -- TODO: ?
map('n', '<C-v>', '"+p', options)      -- Paste
map("v", "<C-v>", '"_dP', options)     -- Paste
-- better move codes
map("n", "<A-j>", ":m .+1<CR>==", options)  -- Move line once in n mode (bottom)
map("n", "<A-k>", ":m .-2<CR>==", options)  -- Move line once in n mode (top)
map("i", "<A-j>", "<Esc>:m .+1<CR>==", options) -- Move line in n mode (bottom)
map("i", "<A-k>", "<Esc>:m .-2<CR>==", options) -- Move line in n mode (top)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", options)  -- Move line (bottom)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", options)  -- Move line (top)
map('v', '<', '<gv', options) -- Better indentation with tab
map('v', '>', '>gv', options) -- Better indentation with tab (reverse)
-- TODO: ?
map('x', 'd', '"_d', options) -- Delete a line in v mode
