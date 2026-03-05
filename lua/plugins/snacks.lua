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
        ___                  ______       _____        __   
       / _ )___  _______    /_  __/__    / ___/__  ___/ /__ 
      / _  / _ \/ __/ _ \    / / / _ \  / /__/ _ \/ _  / -_)
     /____/\___/_/ /_//_/   /_/  \___/  \___/\___/\_,_/\__/ 
 _      __         __   __  _              ____         ___          ____ 
| | /| / /__  ____/ /__/ / (_)__   ___ _  / __/__ ___ _/ _/__ ___ __/ / /_
| |/ |/ / _ \/ __/ / _  / / (_-<  / _ `/ _\ \/ -_) _ `/ _/ _ `/ // / / __/
|__/|__/\___/_/ /_/\_,_/ /_/___/  \_,_/ /___/\__/\_, /_/ \_,_/\_,_/_/\__/ 
                           /___/
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
        { section = "terminal", cmd = "fortune -as computers | fold -w 60 -s", height = 5, padding = 1, hl = "header" },
      },
    },
  },
}
