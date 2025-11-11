return {
  { "mason-org/mason-lspconfig.nvim", opts = { ensure_installed = { "vtsls", "vue_ls" } } },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          filetypes = { "typescript", "javascript", "vue" },
          settings = {
            vtsls = {
              tsserver = {
                globalPlugins = {
                  {
                    name = "@vue/typescript-plugin",
                    location = vim.fn.expand "$MASON/packages/vue-language-server/node_modules/@vue/language-server",
                    languages = { "vue" },
                  },
                },
              },
            },
          },
        },
        vue_ls = {
          init_options = { typescript = {} },
        },
      },
    },
  },
}
