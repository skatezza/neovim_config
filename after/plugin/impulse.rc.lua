local status, impulse = pcall(require, "impulse")
if (not status) then return end

impulse.setup({
        api_key = "secret_VwP3ng2W33P6gcgod6Kahoy3aQlCpSKYLHNQHJnhayV",
        always_refetch = false,
        open_in_browser = false,
})

vim.keymap.set('n', '<leader>lk', '<cmd>lua require("impulse").menu_search()<cr>')
vim.keymap.set('n', '<leader>ll', '<cmd>lua require("impulse").follow_link()<cr>')


