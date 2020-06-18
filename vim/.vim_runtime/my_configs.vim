" some additional vimrc configuration
set splitbelow
set splitright

" setting transparency
" this has to be sourced after the colorscheme is set
" in extended.vim
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE

" get rid of the superfluous mode message at the bottom
" since we are using lightline
set noshowmode
" syntax highlighting for ini style config files
set filetype=dosini

let MRU_File = $HOME . '/.vim_runtime/vim_mru_files'
set viminfo+=n~/.vim_runtime/viminfo
