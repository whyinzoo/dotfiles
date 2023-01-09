local wk = require("which-key")
local mappings = {
  q = {":q<CR>", "Quit"},
  Q = {":wq<CR>", "Save & Quit"},
  w = {":w<CR>", "Save"},
  q = {":q<CR>", "Quit"},
  ff = {":Telescope find_files<CR>", "Telescope find files"},
  fg = {":Telescope live_grep<CR>", "Telescope live grep"},
  fr = {":Telescope resume<CR>", "Telescope resume search"},
}
local opts = {
  prefix = '<leader>'
}


wk.register(mappings, opts)
