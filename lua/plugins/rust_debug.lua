return {
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    'rust-lang/rust.vim',
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
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

