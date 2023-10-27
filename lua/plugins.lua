local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Essential or core plugins
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'     -- Common utilities

  -- Colorschemes and UI-related
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'keiyakeiya/PapilioDehaanii.vim'
  use 'junegunn/limelight.vim'
  use 'folke/zen-mode.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline

  -- Language specific and formatting
  use 'fatih/vim-go'
  use 'pangloss/vim-javascript'
  use 'othree/html5.vim'
  use 'evanleck/vim-svelte'
  use 'vimwiki/vimwiki'
  use 'MunifTanjim/prettier.nvim'
  use {
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile --production',
    ft = { 'astro', 'golang', 'javascript', 'typescript', 'css', 'scss', 'json', 'graphql', 'markdown', 'php', 'python',
      'vue', 'svelte', 'yaml', 'html' }
  }

  -- LSP, Completion, and Syntax
  use 'neovim/nvim-lspconfig' -- LSP
  use 'hrsh7th/cmp-nvim-lsp'   -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-buffer'     -- nvim-cmp source for buffer words
  use 'hrsh7th/nvim-cmp'       -- Completion
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-treesitter/nvim-treesitter'

  -- Git and version control
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  -- Navigation and File Management
  use 'nvim-tree/nvim-web-devicons'
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }
  use 'junegunn/fzf.vim'
  use 'vijaymarupudi/nvim-fzf'
  use 'vijaymarupudi/nvim-fzf-commands'
  use 'nanotee/zoxide.vim'

  -- Additional Utilities
  use 'tpope/vim-repeat'
  use 'tpope/vim-commentary'
  use 'tpope/vim-endwise'
  use 'kqito/vim-easy-replace'
  use 'terryma/vim-smooth-scroll'
  use 'mbbill/undotree'
  use 'windwp/nvim-autopairs'
  use 'mg979/vim-visual-multi'
  use 'norcalli/nvim-colorizer.lua'
  use({
    "roobert/tailwindcss-colorizer-cmp.nvim",
    config = function()
      require("tailwindcss-colorizer-cmp").setup({ color_square_width = 2 })
    end
  })
  require("cmp").config.formatting = {
    format = require("tailwindcss-colorizer-cmp").formatter
  }
end)
