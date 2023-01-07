vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- nvm-tree setup
-- https://www.youtube.com/watch?v=qu2xN8EkbOQ
-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt
require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  sort_by = "case_sensitive",
  auto_reload_on_write = true,
  view = {
    -- number = true, -- adds number line to nvim-tree
    -- relativenumber = true,
    adaptive_size = true,
    mappings = {
      list = {
        -- { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
  },
  filters = {
    dotfiles = false,
    custom = { ".git" },
  },
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
})

vim.g.nvim_tree_respect_buf_cwd = 1
