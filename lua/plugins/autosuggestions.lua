return{ 
   {
      "mason-org/mason.nvim",
      config = function()
	 require('mason').setup()
      end 
   },
   {
      "mason-org/mason-lspconfig.nvim",
      config = function()
	 require('mason-lspconfig').setup()
      end
   },
   {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      config = function()
	 require('mason-tool-installer').setup({
	    ensure_installed = { 
	       "clangd",
	       "stylua",
	       "lua_ls",
	       "codelldb",
	       "rust-analyzer",
	       "codelldb"
	    } 
      })
      end 
   },
   {
      "neovim/nvim-lspconfig",
            
    dependencies = {
      "hrsh7th/nvim-cmp",           -- Autocompletion plugin
      "hrsh7th/cmp-nvim-lsp",        -- LSP source for nvim-cmp
    },
    config = function()
      -- Set up nvim-cmp
      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = "nvim_lsp" }, -- LSP-based completions
          { name = "buffer" },    -- Words from current buffer
          { name = "path" },      -- Filesystem paths
        },
        mapping = cmp.mapping.preset.insert({
	 ["<Down>"] = cmp.mapping.select_next_item(),
	 ["<Up>"] = cmp.mapping.select_prev_item(),
	 ["<CR>"] = cmp.mapping.confirm({ select = true }),
        })
      })
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
   end
   }
}
