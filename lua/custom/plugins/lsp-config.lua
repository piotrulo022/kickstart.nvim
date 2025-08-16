return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pyflakes = { enabled = false },
                pycodestyle = { enabled = false }, -- optional, if you want Ruff to handle style checks too
              },
            },
          },
        },
      },
    },
  },
}
