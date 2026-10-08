return {
  "mrjones2014/smart-splits.nvim",
  lazy = false,
  opts = {
    move = {
      at_edge = false,
    },
  },
  config = function(_, opts)
    require("smart-splits").setup(opts)

    local ss = require("smart-splits")

    vim.keymap.set("n", "<C-h>", ss.move_cursor_left)
    vim.keymap.set("n", "<C-j>", ss.move_cursor_down)
    vim.keymap.set("n", "<C-k>", ss.move_cursor_up)
    vim.keymap.set("n", "<C-l>", ss.move_cursor_right)
  end,
}
