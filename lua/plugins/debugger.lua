return {
    {
        "mfussenegger/nvim-dap",
        keys = {
            { "<F5>", function() require("dap").continue() end, desc = "DAP Continue" },
            { "<F10>", function() require("dap").step_over() end, desc = "DAP Step Over" },
            { "<F11>", function() require("dap").step_into() end, desc = "DAP Step Into" },
            { "<F12>", function() require("dap").step_out() end, desc = "DAP Step Out" },
            { "<Leader>b", function() require("dap").toggle_breakpoint() end, desc = "DAP Toggle Breakpoint" },
            { "<Leader>B", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, desc = "DAP Conditional Breakpoint" },
            { "<Leader>lp", function() require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: ")) end, desc = "DAP Log Point" },
            { "<Leader>dr", function() require("dap").repl.open() end, desc = "DAP Open REPL" },
            { "<Leader>dl", function() require("dap").run_last() end, desc = "DAP Run Last" },
        },
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
        },
        opts = {
            handlers = {},
        },
    },
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end,
    },
    {
      "NvChad/nvterm",
      config = function()
	require("nvterm").setup()
      end
    }
}

