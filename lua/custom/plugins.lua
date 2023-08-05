local plugins = {
  {
    "rcarriga/nvim-notify",
    lazy = false,
    config = function()
      require("notify").setup {
        stages = "fade_in_slide_out",
        background_colour = "FloatShadow",
        timeout = 3000,
      }
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
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.lspconfig"
    end,
  },
}

return plugins
