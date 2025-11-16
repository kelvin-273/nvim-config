return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false, -- snacks wants to be set up early
  ---@type snacks.Config
  opts = {
    -- only enable what you actually want
    picker = {
      enabled = true,
      -- optional tiny tweaks
      win = {
        -- style = "float", -- default
        preview = { border = "single" },
      },
    },
  },
  keys = {
    -- top-level picker
    { "<leader><space>", function() Snacks.picker.smart() end,   desc = "Smart Find Files" },

    -- basic “telescope-ish” bindings
    { "<leader>ff",      function() Snacks.picker.files(
      -- get the git root or fall back to cwd
      { cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1] or vim.loop.cwd() }
    ) end,   desc = "Find Files" },
    { "<leader>fg",      function() Snacks.picker.grep() end,    desc = "Grep" },
    { "<leader>fb",      function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>fr",      function() Snacks.picker.recent() end,  desc = "Recent Files" },
    { "<leader>fh",      function() Snacks.picker.help() end,    desc = "Help Tags" },

    -- command history / search history, handy extras
    { "<leader>:",       function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>s/",      function() Snacks.picker.search_history() end,  desc = "Search History" },
  },
}

