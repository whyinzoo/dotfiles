# nvim
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
- Space-sf - find files
- Space-sg - live grep
- Space-sr - search resume

## bufferline
- Tab - next buffer
- Shift-Tab - previous buffer

-------------------
# p10k
## powershell10k
# move p10k.zsh to .p10k.zsh in home directory
