return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local util = require("lspconfig.util")

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "gdscript",
        callback = function(args)
          local root = util.root_pattern("project.godot", ".git")(args.file) or vim.fn.getcwd()

          vim.lsp.start({
            name = "godot",
            cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
            root_dir = root,
            -- reuse one client per root
            reuse_client = function(client, config)
              return client.name == config.name and client.config.root_dir == config.root_dir
            end,
          })
        end,
      })
    end,
  },
}
