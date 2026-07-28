return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      hidden = true,
    },
    picker = {
      sources = {
        explorer = {
          layout = {
            layout = {
              position = "right",
              width = 36,
            },
          },
        },
      },
    },
  },
  config = function(_, opts)
    local notify = vim.notify
    require("snacks").setup(opts)
    if LazyVim.has("noice.nvim") then
      vim.notify = notify
    end
    _G.Snacks.deactivate = function() end
  end,
}
