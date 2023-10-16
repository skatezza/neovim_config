vim.api.nvim_set_keymap('n', '{', ':call smooth_scroll#up(&scroll*2, 4, 3)<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '}', ':call smooth_scroll#down(&scroll*2, 4, 3)<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-u>', ':call smooth_scroll#up(&scroll, 4, 2)<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-d>', ':call smooth_scroll#down(&scroll, 4, 2)<cr>', {noremap = true, silent = true})
