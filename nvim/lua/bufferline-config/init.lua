require("bufferline").setup({
  options = {
    mode = 'buffers',
    indicator = {
      style = 'underline'
    },
    offsets = {
      {filetype = 'NvimTree', text = "File Explorer"}
    },
  },
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {attribute = 'fg', highlight = 'Function'},
      italic = false
    }
  }
})

vim.cmd [[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]
