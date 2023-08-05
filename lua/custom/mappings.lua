local M = {}

M.abc = {
  n = {
    ["<leader>t"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle transparency",
    },
    ["<leader>T"] = {
      function()
        require("base46").toggle_theme()
      end,
      "Toggle theme",
    },
  },
}

return M
