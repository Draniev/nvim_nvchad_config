local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
-- Тут только установка СТАНДРТНОЙ конфигурации для установленного LSP сервера
-- Список всех поддерживаемых LSP тут: 
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {   "html",
                    "cssls",
                    "tsserver",
                    "clangd",
                    "pyright",
                    "yamlls",
                    "dockerls",
                    "docker_compose_language_service",
                }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
