return {
  "mxsdev/nvim-dap-vscode-js",
  dependencies = { "mfussenegger/nvim-dap" },
  event = "User AstroFile",
  config = function()
    require("dap-vscode-js").setup {
      debugger_path = vim.fn.stdpath "data" .. "/lazy/vscode-js-debug",
      adapters = { "pwa-node", "pwa-chrome" },
    }
  end,
}
