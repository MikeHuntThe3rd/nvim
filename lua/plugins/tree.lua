return{
   {
      "nvim-tree/nvim-tree.lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function ()
	 local function my_on_attach(bufnr)
	 local api = require "nvim-tree.api"

	 local function opts(desc)
	    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	 end
   
	 api.config.mappings.default_on_attach(bufnr)

	 -- vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        
	 --       opts('Up'))
	 -- vim.keymap.set('n', '<S-t>', api.tree.change_root_to_node, opts('Set root to node'))
	 end

	 require("nvim-tree").setup{ on_attach = my_on_attach, }
	 vim.api.nvim_create_autocmd("VimEnter", {
	 callback = function()
	    require("nvim-tree.api").tree.open()
	 end })
      end
   }
}
