return {
  "mg979/vim-visual-multi",
  branch = "master",
  event = "VeryLazy",
  init = function()
    vim.g.VM_maps = {
      ["Find Under"] = "<C-n>",
      ["Find Subword Under"] = "<C-n>",
      ["Add Cursor Down"] = "<C-j>",
      ["Add Cursor Up"] = "<C-k>",
      ["Select All"] = "<C-A-n>",
      ["Skip Region"] = "q",
      ["Remove Region"] = "Q",
      ["Start Regex Search"] = "\\/",
    }
    vim.g.VM_highlight_matches = "underline"
    vim.g.VM_theme = "iceblue"
  end,
}
