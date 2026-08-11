return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    file_types = { "markdown" },
    render_modes = { "n", "c", "neo-tree" },
    heading = {
      width = "full",
    },
    code = {
      style = "full",
      width = "block",
      border = "thin",
    },
    pipe_table = {
      preset = "double",
    },
  },
  config = function(_, opts)
    require("render-markdown").setup(opts)

    vim.api.nvim_set_hl(0, "RenderMarkdownCode", { fg = "#E6EDF3", bg = "#252A34" })
    vim.api.nvim_set_hl(0, "RenderMarkdownCodeInfo", { fg = "#E6EDF3", bg = "#252A34" })

    for i = 1, 3 do
      vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i, { fg = "#FFFFFF", bold = true })
    end

    vim.api.nvim_set_hl(0, "RenderMarkdownTableHead", { fg = "#E6EDF3", bold = true })
  end,
}
