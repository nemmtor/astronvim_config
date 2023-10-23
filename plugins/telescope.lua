return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  opts = function(_, opts)
    opts.defaults.layout_config = {
      horizontal = { prompt_position = "top", preview_width = 0.40 },
      vertical = { mirror = false },
      width = 0.99,
      height = 0.99,
      preview_cutoff = 120,
    }
  end,
}
