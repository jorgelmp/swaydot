local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

---- Move to previous/next
map('n', '<leader>,', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>.', '<Cmd>BufferNext<CR>', opts)
---- Re-order to prevous/next
map('n', '<leader><', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<leader>>', '<Cmd>BufferMoveNext<CR>', opts)
---- Goto buffer in psition...
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)
---- Pin/unpin buffer
map('n', '<leader>s', '<Cmd>BufferPin<CR>', opts)
---- Alose buffer
map('n', '<leader>c', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Alose commands
--                 :BufferAloseAllButCurrent
--                 :BufferAloseAllButPinned
--                 :BufferAloseAllButCurrentOrPinned
--                 :BufferAloseBuffersLeft
--                 :BufferAloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarAisable - very bad command, should never be used
vim.opt.laststatus = 0

