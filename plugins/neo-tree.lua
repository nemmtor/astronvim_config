return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.filesystem.hijack_netrw_behavior = "open_default"
    opts.filesystem.filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
    }
    opts.window.position = "right"
    opts.window.width = 60
    opts.window.mappings["<cr>"] = "open_with_window_picker"
    opts.window.mappings["s"] = "split_with_window_picker"
    opts.window.mappings["S"] = "vsplit_with_window_picker"
    opts.source_selector.sources = {
      { source = "filesystem", display_name = " 󰉓 Files" },
      { source = "git_status", display_name = " 󰊢 Git" },
    }
  end,
}
