vim.cmd("autocmd!")

vim.filetype.add({ extension = { mdx = 'mdx' } })
vim.filetype.add({ extension = { postcss = 'css' } })
vim.cmd('imap <silent><script><expr> <C-j> codeium#Accept("")')
vim.cmd("let g:codeium_no_tab_map = v:true")
vim.cmd("let g:codeium_assume_mapped = v:true")
vim.api.nvim_set_keymap("i", "<C-e>", 'codeium#Accept()', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-j>", 'codeium#Previous()', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-k>", 'codeium#Next()', { silent = true, expr = true })
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.open_command = 'brave %s'
vim.opt.termguicolors = true
vim.scriptencoding = 'utf-8'
vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme "solarized-osaka"
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.wo.number = true
vim.opt.relativenumber = false
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.updatetime = 250
vim.wo.signcolumn = 'yes'
vim.opt.scrolloff = 2
vim.opt.undofile = true
vim.opt.shell = 'fish'
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.completeopt = 'menuone,noselect'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = true          -- No Wrap lines
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/.DS_Store', '*/node_modules/*' }

-- Cursor settings
vim.opt.guicursor = {
  'n-v-c:block', -- Normal mode
  'i-ci:ver25', -- Insert mode
  'r-cr:hor20', -- Replace mode
  'a:blinkon0'  -- Visual mode
}

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Keep project root as PWD
vim.cmd [[augroup cdpwd autocmd! autocmd VimEnter *cd $PWD augroup END]]

-- Goyo.vim integration
vim.cmd [[autocmd! User GoyoEnter Limelight]]
vim.cmd [[autocmd! User GoyoLeave Limelight!]]

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

-- Autocommand to format with Prettier on save for specific file types
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.css", "*.json", "*.md" },
  callback = function()
    -- Command to run Prettier
    vim.cmd("Prettier")
  end,
})

