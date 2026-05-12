return {
  {
    "chomosuke/typst-preview.nvim",
    lazy = false,
    version = "1.*",
    opts = {
      open_cmd = "qutebrowser %s",
    },
    keys = {
      { "<leader>tp", "<cmd>TypstPreview<cr>",             desc = "Typst Preview Open" },
      { "<leader>tP", "<cmd>TypstPreviewStop<cr>",         desc = "Typst Preview Stop" },
      { "<leader>tt", "<cmd>TypstPreviewToggle<cr>",       desc = "Typst Preview Toggle" },
      { "<leader>tf", "<cmd>TypstPreviewFollowCursor<cr>", desc = "Typst Follow Cursor" },
      { "<leader>tF", "<cmd>TypstPreviewNoFollowCursor<cr>", desc = "Typst No Follow Cursor" },
    },
  },
}
