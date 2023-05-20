return {
  n = {
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },
  },
  i = {
    ["<C-j>"] = {
      "copilot#Accept('<CR>')",
      desc = "Accept Copilot suggestion",
      noremap = true,
      expr = true,
      silent = true,
      replace_keycodes = false,
    },
  },
}
