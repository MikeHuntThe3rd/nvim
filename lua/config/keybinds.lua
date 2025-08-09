vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ss", function()
  vim.cmd("wall")  -- Save all open files
  print("All files saved")
end, { desc = "Save all files" })
vim.keymap.set("n", "<leader>qq", function()
  vim.cmd("qall")  -- Save all open files
  vim.cmd("wall") 
end, { desc = "Save all files" })
