return {
  {
    "catppuccin/nvim",
    priority = 1000,
    opts = function(_, opts)
      opts.flavour = "auto"
      opts.no_italic = true
      opts.no_bold = true
      opts.transparent_background = true
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
