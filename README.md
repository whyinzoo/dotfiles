# nvim

### commands for editing
- Shift-V - V-Line mode (visual line)
- Space-cl - comment out the line
- Space-c - comment out blocks of line in V-Line mode
- cutting/pasting using visual mode - https://vim.fandom.com/wiki/Cut/copy_and_paste_using_visual_selection

## nvim-tree
### commands: https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt
- :NvimTreeToggle - opens up nvmtree explorer
- Space-e - toggle file explorer
- Tab - open file in pane/expand folder
- Ctrl-w - toggle between explorer and other pane
- g? - to see commands
- o - open file in new buffer

### file management commands
- a - (add) allows the creation of files or folders, creating a folder is done by following the name with the slash /- r - rename file
- d - (delete) to delete the selected file or in case of a folder delete the folder with all its content
- x - to cut and copy the selection to the clipboard, can be files or folders with all its contents, with this command associated with the paste command you make the file moves within the tree
- c - (copy) like the previous command this copies the file to the clipboard but keeps the original file in its location
- p - (paste) to paste the contents of the clipboard to the current location
- y - to copy only the file name to the clipboard, there are also two variants which are Y to copy the relative path and g + y to copy the absolute path

## telescope - fuzzy finder and browser
### need to install ripgrep
> brew install rg

### commands for searching
- Space-sf - find files
- Space-sg - live grep
- Space-sr - search resume

## bufferline
- Tab - next buffer
- Shift-Tab - previous buffer


## lsp
### https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
Need to install the following lsp
- css: npm i -g vscode-langservers-extracted  
- js: npm install -g typescript typescript-language-server
- ruby: gem install ruby-lsp
- python: pip install "python-lsp-server[all]" 
- vim: npm install -g vim-language-server
- golang: go install github.com/nametake/golangci-lint-langserver@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
-------------------
# p10k - powershell10k
### move p10k.zsh to .p10k.zsh in home directory
