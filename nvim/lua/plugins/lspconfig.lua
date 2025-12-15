return {
  {
    "neovim/nvim-lspconfig",
    version = "v1.0.0",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        bashls = {},
        yamlls = {},
        marksman = {},
        terraformls = {},
      },
    },
  },
}
