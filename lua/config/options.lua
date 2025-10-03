-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.api.nvim_create_user_command("Log", function(opts)
  Snacks.notifier.show_history()
end, { nargs = 0, desc = "Reveals the history logged by Snacks notifier." })

local opt = vim.opt

opt.expandtab = true
opt.list = true

vim.filetype.add({
  extension = {
    fs = "glsl",
  },
})
