-- return {
--   "mrjones2014/smart-splits.nvim",
--   lazy = false,
--   opts = {
--     move = {
--       at_edge = "wrap",
--     },
--   },
--   config = function(_, opts)
--     require("smart-splits").setup(opts)
--
--     local ss = require("smart-splits")
--
--     vim.keymap.set("n", "<C-h>", ss.move_cursor_left)
--     vim.keymap.set("n", "<C-j>", ss.move_cursor_down)
--     vim.keymap.set("n", "<C-k>", ss.move_cursor_up)
--     vim.keymap.set("n", "<C-l>", ss.move_cursor_right)
--   end,
-- }

return {
  "smart-splits-nvim/smart-splits.nvim",
  -- branch = "v3",
  opts = {
    mux = {
      backend = "smart-splits-backend-wezterm",
    },
  },
  keys = {
    {
      "<C-h>",
      function()
        require("smart-splits").move_cursor_left()
      end,
    },
    {
      "<C-j>",
      function()
        require("smart-splits").move_cursor_down()
      end,
    },
    {
      "<C-k>",
      function()
        require("smart-splits").move_cursor_up()
      end,
    },
    {
      "<C-l>",
      function()
        require("smart-splits").move_cursor_right()
      end,
    },
  },
  dependencies = {
    {
      "smart-splits-nvim/backend-wezterm",
      opts = {
        -- name/path of the wezterm binary; used only by :checkhealth's diagnostic version probe,
        -- never on any hot path (see "How it works")
        cli_path = "wezterm",
      },
    },
  },
}
