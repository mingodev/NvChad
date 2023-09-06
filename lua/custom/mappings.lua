local M = {}

-- GLobal Tests Mappings
M.dap = {
  plugin = true,
  n = {
        ["<leader>bp"] = {
            "<cmd> DapToggleBreakpoint <CR>",
            "Add Breakpoint at line"
        },
        ["<leader>dw"] = {
            function()
                local widgets = require('dap.ui.widgets');
                local sidebar = widgets.sidebar(widgets.scope)
                sidebar.open();
            end,
            "Open Debugging Window"
        }
    }
}

-- Go Tests Mappings
M.dap_go = {
    plugin = true,
    n = {
        ["<leader>dgt"] = {
            function()
                require('dap-go').debug_test()
            end,
            "Debug Go Test"
        },
        ["<leader>dgl"] = {
            function()
                require('dap-go').debug_last()
            end,
            "Debug last Go Test"
        }
    }
}

--Gopher
M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = { -- Go Struct JSON
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = { -- Go Struct YAML
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

-- Custom Keybinds
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
