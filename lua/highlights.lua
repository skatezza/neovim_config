vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 1
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

vim.cmd("let g:limelight_conceal_ctermfg = 'gray'")
vim.cmd("let g:limelight_conceal_ctermfg = 240")
vim.cmd("let g:limelight_conceal_guifg = 'DarkGray'")
vim.cmd("let g:limelight_conceal_guifg = '#777777'")
vim.cmd("let g:limelight_default_Coefficient = 0.9")

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]

-- -- set Neovim bg to Terminal bg
-- vim.cmd("hi Normal ctermbg=NONE guibg=NONE")
-- vim.cmd("hi NonText ctermbg=NONE guibg=NONE")
