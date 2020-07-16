if &compatible
  set nocompatible
endif

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/writing.vim

filetype plugin indent on
syntax enable

"Set leader key to ';'.
let mapleader=";"

"Set 'jk' and 'kj' to escape.
inoremap jk <Esc>

"Plugins config.

"Airline config.
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1

hi! link Sneak Search 
"Set colorscheme
colorscheme nord

"Activate hybrid line numbers.
set number relativenumber
set nu rnu

"Activate highlight of the current line.
set cursorline

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"Vim vue settings.
let g:vim_vue_plugin_use_sass = 1

"Svelte config.
let g:vim_svelte_plugin_use_sass = 1
let g:vim_svelte_plugin_debug = 0

"LeaderF config.
"let g:Lf_WindowPosition = 'popup'
"let g:Lf_PreviewInPopup = 1
"let g:Lf_ShortcutF = "<leader>jj"

"fzf.vim config.
map <leader>jj :Files<CR>

"Sneak config.
let g:sneak#s_next = 1
let g:sneak#label = 1

"Git gutter config.
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '/'
let g:gitgutter_sign_removed = '-'
