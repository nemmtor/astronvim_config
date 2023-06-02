local utils = require "astronvim.utils"
local get_icon = utils.get_icon

local function EslintOrFormat()
  local clients = vim.lsp.get_active_clients()

  for _, client in ipairs(clients) do
    if client.name == "tsserver" then
      vim.cmd.EslintFixAll()
      return
    end
  end

  vim.cmd.Format()
end

local sections = {
  s = { desc = get_icon("Search", 1, true) .. "[S]earch" },
}

return {
  n = {
    -- uncomment things that I don't use
    ["<leader>e"] = false,
    ["<leader>h"] = false,
    ["<leader>n"] = false,
    ["<leader>o"] = false,
    ["<leader>q"] = false,
    ["<leader>w"] = false,
    ["<leader>f"] = false,
    ["<leader>f<CR>"] = false,
    ["<leader>f'"] = false,
    ["<leader>fa"] = false,
    ["<leader>fb"] = false,
    ["<leader>fc"] = false,
    ["<leader>fC"] = false,
    ["<leader>ff"] = false,
    ["<leader>fF"] = false,
    ["<leader>fh"] = false,
    ["<leader>fk"] = false,
    ["<leader>fm"] = false,
    ["<leader>fo"] = false,
    ["<leader>fr"] = false,
    ["<leader>ft"] = false,
    ["<leader>fw"] = false,
    ["<leader>fW"] = false,
    ["<leader>fn"] = false,
    ["<leader>/"] = false,
    ["<C-'>"] = false,
    ["J"] = { "mzJ`z", desc = "Better merge lines" },
    ["n"] = { "nzzzv", desc = "Better search next" },
    ["N"] = { "Nzzzv", desc = "Better search prev" },
    ["<leader>s"] = sections.s,
    ["<leader>sg"] = { function() require("telescope.builtin").live_grep() end, desc = "[S]earch [G]rep" },
    ["<leader>sf"] = {
      function() require("telescope.builtin").find_files { hidden = false } end,
      desc = "[S]earch [F]iles",
    },
    ["<leader>?"] = { function() require("telescope.builtin").oldfiles() end, desc = "[?] Search recent files" },
    ["<F1>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
    ["<F2>"] = { EslintOrFormat, desc = "Eslint or format" },
    ["<F3>"] = {
      function()
        vim.cmd.UndotreeToggle()
        vim.cmd.UndotreeFocus()
      end,
      desc = "Toggle Explorer1",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move line up" },
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move line down" },
  },
}
