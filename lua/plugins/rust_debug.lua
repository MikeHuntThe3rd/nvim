return {
  {
    'saecki/crates.nvim',
    ft = { "toml" },
    config = function()
      require("crates").setup {
        lsp = {
          enabled = true,  -- ✅ Enables crates' built-in LSP
          on_attach = function(_, bufnr)
            -- Optional: integrate with cmp automatically
            local cmp = require("cmp")
            cmp.setup.buffer {
              sources = cmp.config.sources {
                { name = "nvim_lsp" },
              },
            }
          end,
        },
      }
    end
  }
}


