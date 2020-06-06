" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'release' })
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('arcticicestudio/nord-vim')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('leafOfTree/vim-svelte-plugin')
  call dein#add('leafOfTree/vim-vue-plugin')
  call dein#add('iamcco/markdown-preview.nvim', { 'on_ft': ['markdown', 'pandoc.markdown', 'rmd'], 'build': 'sh -c "cd app & yarn install"' })
  call dein#add('airblade/vim-gitgutter')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('junegunn/fzf')
  call dein#add('junegunn/fzf.vim')
  call dein#add('airblade/vim-rooter')
  call dein#add('unblevable/quick-scope')
  call dein#add('justinmk/vim-sneak')
  " Writting plugins.
  call dein#add('reedes/vim-pencil')
  call dein#add('dbmrq/vim-ditto')
  call dein#add('junegunn/goyo.vim')

  call dein#end()
  call dein#save_state()
endif

