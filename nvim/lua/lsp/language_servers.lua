local capabilities = require('cmp_nvim_lsp').default_capabilities()
local langservers = {
  'html',
  'cssls',
  'tsserver',
  'dockerls',
  'ruby_ls',
}

for _, server in ipairs(langservers) do 
  require'lspconfig'[server].setup {
    capabilities = capabilities,
  }
end

-- go lang lsp
lspconfig = require "lspconfig"
util = require "lspconfig/util"

require'lspconfig'.gopls.setup {
  capabilities = capabilities,
  cmd = {"gopls", "serve"},
  filetypes = {"go", "gomod"},
  root_dir = require'lspconfig/util'.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}
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
