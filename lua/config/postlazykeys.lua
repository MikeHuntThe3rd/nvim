
vim.keymap.set('n', '<leader>tree', require('nvim-tree.api').tree.toggle, { desc = 'Toggle NvimTree' })
vim.keymap.set("n", "<F8>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Toggle horizontal terminal" })
