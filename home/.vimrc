set nu
set ruler
set cursorline
highlight ColorColumn ctermbg=magenta
call matchadd('colorColumn', '\%81v', 100)

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/nash1111/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/nash1111/.cache/dein')
  call dein#begin('/home/nash1111/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/nash1111/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


