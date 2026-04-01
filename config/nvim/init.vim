lua << EOF
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "lervag/vimtex" },
})
EOF

let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexmk'

" show line number
set number
" show relative line number
set relativenumber 
" width = 4 before text editing
set numberwidth=4
" no pesky swap files
set nobackup
set nowritebackup
set noswapfile

" don't wrap text
set nowrap

syntax on

set backspace=2

" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

set autoindent
" delete four spaces with backspace if it's a tab
set softtabstop=4 
colorscheme vim
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
