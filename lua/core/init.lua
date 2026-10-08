-- Core configuration loader
require("core.options")
require("core.keymaps")
require("core.autocmds")
require("core.lazy")
vim.g.clipboard = {
  name = "OSC52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = function()
      return { vim.fn.getreg("") }, "v"
    end,
    ["*"] = function()
      return { vim.fn.getreg("") }, "v"
    end,
  },
}
