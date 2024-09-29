return {
  "mfussenegger/nvim-lint",
  opts = {
    linters = {
      ["markdownlint-cli2"] = {
        args = { "--config", os.getenv("HOME") .. "/.markdownlint-cli2.yaml", "--" },
      },
    },
  },
}
