return {
  "snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    picker = {
      hidden = true,
      sources = {
        files = {
          hidden = true,
        },
      },
    },
    dashboard = {
      preset = {
        header = [[
 ██████╗██╗   ██╗██████╗ ███████╗ ██████╗ ██████╗ 
██╔════╝██║   ██║██╔══██╗██╔════╝██╔═══██╗██╔══██╗
██║     ██║   ██║██████╔╝███████╗██║   ██║██████╔╝
██║     ██║   ██║██╔══██╗╚════██║██║   ██║██╔══██╗
╚██████╗╚██████╔╝██║  ██║███████║╚██████╔╝██║  ██║
 ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
    ]], -- wtf?
      },
      formats = {
        key = function(item)
          return { { "[", hl = "special" }, { item.key, hl = "key" }, { "]", hl = "special" } }
        end,
      },
      sections = {
        { section = "header" },
        { section = "recent_files", title = "Files", cwd = true, indent = 2, padding = 1 },
        { section = "keys", title = "Actions", indent = 2, padding = 1 },
        { section = "terminal", cmd = "fortune -as computers | fold -w 60 -s", padding = 1, hl = "header" },
      },
    },
  },
}
