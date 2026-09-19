-- Colorschemes: Theme configurations
return {
  -- {
  --   "f-person/auto-dark-mode.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     update_interval = 1000,
  --     set_dark_mode = function()
  --       vim.cmd([[colorscheme onedark]])
  --     end,
  --     set_light_mode = function()
  --       vim.cmd([[colorscheme onedark]])
  --     end,
  --   },
  -- },

  -- ════════════════════════════════════════════════════════════════════════════
  -- Forest Night
  -- ════════════════════════════════════════════════════════════════════════════
  {
    "adibhanna/forest-night.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("forest-night").setup({
        disable = {
          background = true, -- fondo transparente (usa el del terminal)
        },
      })
      -- vim.cmd([[colorscheme forest-night]])
    end,
  },

  -- ════════════════════════════════════════════════════════════════════════════
  -- Solarized Osaka
  -- ════════════════════════════════════════════════════════════════════════════
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function()
      -- vim.cmd([[colorscheme solarized-osaka]])
    end,
  },

  -- ════════════════════════════════════════════════════════════════════════════
  -- Night Fox
  -- ════════════════════════════════════════════════════════════════════════════
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        transparent = true,
      })
    end,
  },

  -- ════════════════════════════════════════════════════════════════════════════
  -- One Dark
  -- ════════════════════════════════════════════════════════════════════════════
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("onedark").setup({
        style = "deep",
        transparent = true,
        code_style = {
          functions = "bold,italic",
          strings = "underline",
          variables = "bold",
          keywords = "italic",
        },
      })
      require("onedark").load()
    end,
  },
}
