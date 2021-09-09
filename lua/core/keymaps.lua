local keymap = vim.api.nvim_set_keymap
local opts = {noremap=true, silent=true}

-- Set Space to leader
vim.g.mapleader = ' '

-- Remap escape 
keymap('i', 'jk', '<ESC>', opts)
keymap('i', 'kj', '<ESC>', opts)

-- Unmap Space
keymap('n', '<Space>', '<NOP>', opts)

-- <super>h remove highlights
keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)

-- Move between windows easier
keymap('', '<C-h>', '<C-w>h', opts)
keymap('', '<C-j>', '<C-w>j', opts)
keymap('', '<C-k>', '<C-w>k', opts)
keymap('', '<C-l>', '<C-w>l', opts)

-- Indent lines of text in visual mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Tab switch buffer
--keymap('i', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
--keymap('i', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of code in visual mode
keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', opts)
keymap('x', 'J', ':move \'>+1<CR>gv-gv\'', opts)

keymap('n', '<Leader>f', 'za', opts)
