return {
  "AstroNvim/astrolsp",
  opts = {
    servers = { "tinymist" },
    config = {
      tinymist = {
        settings = {},
        root_dir = function(filename, bufnr) return vim.fn.getcwd() end,
      },
    },
  },
}
