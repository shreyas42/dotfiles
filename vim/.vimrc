set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

" uses pathogen to manage plugins
" clone the git repositories into 
" ~/.vim_runtime/my_plugins/ and pathogen will take care of the rest

" my custom configurations added to ultimate vimrc
try
source ~/.vim_runtime/my_configs.vim
catch
endtry
