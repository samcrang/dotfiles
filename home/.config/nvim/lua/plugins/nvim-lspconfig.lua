return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      exclude = { "go" },
    },
    servers = {
      yamlls = {
        settings = {
          yaml = {
            customTags = { "!vault" },
          },
        },
      },
    },
  },
}
