-- Map wrapper for easy setting
local keymap = vim.keymap
-- local opts = { noremap = true, silent = true } -- Try to replace all later

-- ## File Operations ##
keymap.set('n', '<Leader><Space>', ':w<CR>') -- Save
keymap.set('n', '<Leader>q', ':q<cr>') -- Quit
keymap.set('n', '<Leader>cd', ':cd %:p:h<CR>', { noremap = true, silent = true }) -- Change directory to the file's directory
keymap.set('n', '<C-Right>', ':tabnext<CR>') -- Move to the next tab
keymap.set('n', '<C-Left>', ':tabprevious<CR>') -- Move to the previous tab

-- ## Text Editing ##
keymap.set('n', '<Leader>x', ":s/\\[ \\]/[x]/ | execute 's/$/ - '.strftime('%Y-%m-%d %H:%M:%S')<CR>", { noremap = true, silent = true })
keymap.set('n', '<C-a>', 'gg<S-v>G') -- Select all
keymap.set('n', 'U', '<C-R>', { noremap = true, silent = true }) -- Redo
keymap.set('n', 'dw', 'vb"_d') -- Delete a word backwards
keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- Move selection down
keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- Move selection up
keymap.set('v', '<', "<gv") -- Shift text left
keymap.set('v', '>', ">gv") -- Shift text right
keymap.set('v', '<Space>', '<Esc>') -- Exit visual mode
keymap.set('o', 'jk', '<Esc>') -- Exit operator mode
keymap.set('t', '<Esc>', '<C-\\><C-n>') -- Exit terminal insert mode
keymap.set('t', 'jk', '<C-\\><C-n>') -- Exit terminal insert mode with jk
keymap.set('n', '<Esc>', ':noh<CR><Esc>', { noremap = true, silent = true }) -- Turn off highlights upon exiting search mode

-- ## Plugins Interactions ##
keymap.set('n', '<Leader>L', ':Limelight!!<CR>') -- Toggle 'junegunn/limelight.vim'
keymap.set('n', '<Space>g', ':ZenMode<CR>') -- Toggle ZenMode

-- ## Navigation ##
keymap.set('n', '<C-j>', '<C-d>zz') -- Scroll down
keymap.set('n', '<C-k>', '<C-u>zz') -- Scroll up
keymap.set('n', '<C-d>', '<C-d>zz') -- Scroll down
keymap.set('n', '<C-u>', '<C-u>zz') -- Scroll up
keymap.set('n', '<Leader>f', '/', { noremap = true, silent = true }) -- Search
keymap.set('n', '<C-f>', '/', { noremap = true, silent = true }) -- Search
keymap.set('n', '+', '<C-=>') -- Increment
keymap.set('n', '-', '<C-x>') -- Decrement
keymap.set('n', 'H', '^') -- Jump to start of line
keymap.set('n', 'L', '$') -- Jump to end of line
keymap.set('n', 'j', 'gj', { noremap = true, silent = true }) -- Navigate wrapped line down
keymap.set('n', 'k', 'gk', { noremap = true, silent = true }) -- Navigate wrapped line up

-- Window Management
keymap.set('n', '<Leader>t', ':tab term<CR>')                      -- Opens terminal in current window
keymap.set('n', '<Leader>T', ':Lspsaga term_toggle<CR>')           -- Opens LspSaga's floating Terminal Window
keymap.set('n', 'sn', ':NvimTreeToggle<CR>')                       -- Toggle NvimTree
keymap.set('n', '<Leader>cd', ':cd %:p:h<CR>', { noremap = true, silent = true })
keymap.set('n', '<Leader>v', ':split<CR>')                         -- Split window horizontally
keymap.set('n', 'sv', ':vsplit<CR>')                               -- Split window horizontally
keymap.set('t', 'sh', '<C-w>h', { noremap = true, silent = true }) -- Move window left (terminal mode)
keymap.set('t', 'sk', '<C-w>k', { noremap = true, silent = true }) -- Move window up (terminal mode)
keymap.set('t', 'sj', '<C-w>j', { noremap = true, silent = true }) -- Move window down (terminal mode)
keymap.set('t', 'sl', '<C-w>l', { noremap = true, silent = true }) -- Move window right (terminal mode)
keymap.set('n', 'sh', '<C-w>h', { noremap = true, silent = true }) -- Move window left
keymap.set('n', 'sk', '<C-w>k', { noremap = true, silent = true }) -- Move window up
keymap.set('n', 'sj', '<C-w>j', { noremap = true, silent = true }) -- Move window down
keymap.set('n', 'sl', '<C-w>l', { noremap = true, silent = true }) -- Move window right

-- ## Plugin-specific keymappings ##
-- fzf-lua
keymap.set("n", "<C-h>", "<cmd>lua require('fzf-lua').live_grep()<CR>", { silent = true })
keymap.set("n", "<C-o>", "<cmd>lua require('fzf-lua').files{}<CR>", { silent = true })

-- Telescope
-- keymap.set("n", "<Leader>fe", "<cmd> Telescope file_browser <CR>")
keymap.set("n", "<Leader>ff", "<cmd> Telescope find_files <CR>")
keymap.set("n", "<Leader>fo", "<cmd> Telescope oldfiles <CR>")
keymap.set("n", "<Leader>fw", "<cmd> Telescope live_grep <CR>")
keymap.set("n", "<Leader>fb", "<cmd> Telescope buffers <CR>")
keymap.set("n", "<Leader>fh", "<cmd> Telescope help_tags <CR>")

-- GPT Assistance
keymap.set("n", "gpt", ":ChatGPT<CR>")
keymap.set("v", "<Leader>ge", ":ChatGPTRun explain_code<CR>")
