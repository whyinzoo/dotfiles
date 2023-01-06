local wk = require("which-key")
local mappings = {
  q = {":q<CR>", "Quit"},
  Q = {":wq<CR>", "Save & Quit"},
  w = {":w<CR>", "Save"},
  q = {":q<CR>", "Quit"},
  sf = {":Telescope find_files<CR>", "Telescope find files"},
  sg = {":Telescope live_grep<CR>", "Telescope live grep"},
  sr = {":Telescope resume", "Telescope resume search"},
}
local opts = {
  prefix = '<leader>'
}


wk.register(mappings, opts)
