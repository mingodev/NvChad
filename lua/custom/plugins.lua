local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensured_installed = {
                "vim",
                "lua",
                "html",
                "css",
                "javascript",
                "typescript",
                "tsx",
                "json",
                "go",
                "java",
                "sql",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        ft = "go",
        opts = function()
            return require "custom.configs.null-ls"
        end,
    },
    {
        "mfussenegger/nvim-dap",
        init = function()
            require("core.utils").load_mappings("dap")
        end
    },
    {
        "dreamsofcode-io/nvim-dap-go",
        ft = "go",
        dependencies = { "mfussenegger/nvim-dap" },
        config = function(_, opts)
            require("dap-go").setup(opts)
            require("core.utils").setup(opts)
        end,
    },
    {
        "olexsmir/gopher.nvim",
        ft = "go",
        config = function(_, opts)
            require("gopher").setup(opts)
            require("core.utils").load_mappings("gopher")
        end,
        build = function()
            vim.cmd [[silent! GoInstallDeps]]
        end,
    },
    {
        "ThePrimeagen/harpoon",
        lazy = true,
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            {
                "<leader>A",
                function()
                    require("harpoon.mark").add_file()
                end,
            },
            {
                "<leader>H",
                function()
                    require("harpoon.ui").toggle_quick_menu()
                end,
            },
            {
                "<leader>N",
                function()
                    require("harpoon.ui").nav_next()
                end,
            },
            {
                "<leader>P",
                function()
                    require("harpoon.ui").nav_prev()
                end,
            },
        },
        config = function()
            require("harpoon").setup {
                menu = {
                    width = vim.api.nvim_win_get_width(0) - 100,
                },
            }
        end,
    },
    {
        "tpope/vim-fugitive",
        lazy = false,
        keys = {
            { "<leader>gf", ":G<cr>" },
        },
    },
    {
        "rbong/vim-flog",
        lazy = true,
        dependencies = { "tpope/vim-fugitive" },
        keys = {
            { "<leader>G", ":Flog -max-count=2000 <cr>" },
        },
    },
}
return plugins
