return {
  n = {
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New buffer" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick buffer to close",
    },
    ["<leader>b"] = { name = "Buffers" },
  },
  x = {
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move line down" },
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move line up" },
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
