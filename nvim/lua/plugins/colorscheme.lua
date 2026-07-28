return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "poimandres",
    },
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      disable_background = true,
      disable_float_background = true,
      highlight_groups = {
        Visual = { fg = "#E4F0FB", bg = "#303340" },
        VisualNOS = { link = "Visual" },
        CursorLine = { fg = "#E4F0FB", bg = "#171922" },
      },
    },
  },
}
