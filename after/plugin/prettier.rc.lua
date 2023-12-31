local prettier = require("prettier")

prettier.setup({
  bin = 'prettierd', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "astro",
    "svelte",
    "css",
    "go",
    "graphql",
    "html",
    "lua",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "php",
    "markdown",
    "scss",
    "python",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})
