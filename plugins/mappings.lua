return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
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
          ["<leader>s"] = {
            ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
            desc = "Search and replace on cursor",
          },
          ["<leader>;"] = { ":Gen<CR>" },
        },
        x = {
          ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move line down" },
          ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move line up" },
          ["<leader>p"] = { '"_dP', desc = "Paste without overriding register" },
          ["<leader>x"] = { "<cmd>!chmod +x %<CR>", silent = true, desc = "Make current file executable" },
        },
        i = {
          ["<C-h>"] = {
            "copilot#Accept('<CR>')",
            desc = "Accept Copilot suggestion",
            noremap = true,
            expr = true,
            silent = true,
            replace_keycodes = false,
          },
        },
        v = {
          ["<leader>;"] = { ":Gen<CR>" },
        },
      },
    },
  },
}
