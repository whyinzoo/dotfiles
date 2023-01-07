local capabilities = require('cmp_nvim_lsp').default_capabilities()
local langservers = {
  'html',
  'cssls',
  'tsserver',
  'pylsp'
}

for _, server in ipairs(langservers) do 
  require'lspconfig'[server].setup {
    capabilities = capabilities,
  }
end

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require'lspconfig'.html.setup {
--   capabilities = capabilities
-- }

-- require'lspconfig'.cssls.setup {
--   capabilities = capabilities,
-- }

-- require'lspconfig'.tsserver.setup {
--   capabilities = capabilities,
-- }

-- require'lspconfig'.ruby_ls.setup{
--   capabilities = capabilities,
-- }

-- require'lspconfig'.dockerls.setup{
--   capabilities = capabilities,
-- }

-- --------------------
-- TODO: NOT WORKING
-- lspconfig = require "lspconfig"
-- util = require "lspconfig/util"

-- require'lspconfig'.gopls.setup {
--   capabilities = capabilities,
--   cmd = {"gopls", "serve"},
--   filetypes = {"go", "gomod"},
--   root_dir = require'lspconfig/util'.root_pattern("go.work", "go.mod", ".git"),
--   settings = {
--     gopls = {
--       analyses = {
--         unusedparams = true,
--       },
--       staticcheck = true,
--     },
--   },
-- }
---------------------

require'lspconfig'.pylsp.setup {
 capabilities = capabilities,
 settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          -- maxLineLength = 100
        }
      }
    }
  },
}
