if true then
  return {}
end
return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.gdscript.setup({
      name = "gdscript",
      cmd = { "ncat", "127.0.0.1", "6005" },
      root_dir = lspconfig.util.root_pattern("project.godot", ".git"),
      filetypes = { "gd", "gdscript" },
    })
  end,
}
