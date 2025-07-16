return {
  "AstroNvim/astrolsp",
  opts = {
    servers = { "tinymist" },
    config = {
      tinymist = {
        settings = {
          projectResolution = "lockDatabase",
          semanticTokens = "enable",
        },
        root_dir = function() return vim.fn.getcwd() end,
        on_attach = function(client, bufnr)
          vim.keymap.set(
            "n",
            "<leader>tm",
            function()
              client:exec_cmd({
                title = "pin",
                command = "tinymist.pinMain",
                arguments = { vim.api.nvim_buf_get_name(0) },
              }, { bufnr = bufnr })
            end,
            { desc = "[T]inymist [P]in", noremap = true }
          )

          vim.keymap.set(
            "n",
            "<leader>tM",
            function()
              client:exec_cmd({
                title = "unpin",
                command = "tinymist.pinMain",
                arguments = { vim.v.null },
              }, { bufnr = bufnr })
            end,
            { desc = "[T]inymist [U]npin", noremap = true }
          )
        end,
      },
    },
  },
}
