local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

-- GO Custom Config
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotpml" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
        gopls = {
            completeUnimported = true,
            usePlaceHolders = true,
            analyses = {
                unusedparams = true,
            }
        }
    }
}

-- Default config
local servers = { "html", "cssls", "clangd", "jdtls", "eslint", "sqlls", "graphql" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
