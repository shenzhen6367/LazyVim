return {
  desc = "Snacks File Explorer",
  recommended = true,
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          auto_close = true,
          -- layout = {
          --   preset = "select",
          --   layout = {
          --     width = 0.2,
          --     min_width = 40,
          --   },
          -- },
        },
      },
    },
  },
  keys = {
    {
      "<leader>fe",
      function()
        Snacks.explorer({ cwd = LazyVim.root() })
      end,
      desc = "Explorer Snacks (root dir)",
    },
    {
      "<leader>fE",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer Snacks (cwd)",
    },
    { "<leader>e", "<leader>fe", desc = "Explorer Snacks (root dir)", remap = true },
    { "<leader>E", "<leader>fE", desc = "Explorer Snacks (cwd)", remap = true },
  },
}
