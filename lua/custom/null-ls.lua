local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local goimports = null_ls.builtins.formatting.goimports
local goenv = os.getenv("GOIMPORTS_LOCAL")
if goenv ~= nil then
    goimports = goimports.with { extra_args = { "-local ", goenv } }
end

local sources = {
    formatting.prettier,
    formatting.stylua,
    lint.eslint,
    goimports,
    formatting.shfmt,
    lint.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
    debug = true,
    sources = sources,
}
