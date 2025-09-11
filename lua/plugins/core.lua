return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
      on_colors = function(colors)
        colors.comment = "#ffa1f6"
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 5000,
--     opts = function(_, opts)
--       opts.flavour = "auto"
--       opts.no_italic = true
--       opts.no_bold = true
--       opts.transparent_background = true
--     end,
--   },
--   {
--     "akinsho/bufferline.nvim",
--     optional = true,
--     opts = function(_, opts)
--       if (vim.g.colors_name or ""):find("catppuccin") then
--         opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
--       end
--     end,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--     },
--   },
-- }
