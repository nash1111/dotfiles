set nu
set ruler
set cursorline
highlight ColorColumn ctermbg=magenta
call matchadd('colorColumn', '\%81v', 100)


autocmd BufEnter *.go set filetype=go
autocmd BufEnter *.md set filetype=markdown
autocmd BufEnter *.py set filetype=python
"autocmd BufEnter *.jl set filetype=julia
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"dein Scripts-----------------------------


if &compatible
  set nocompatible               " Be iMproved
endif
"might work ~/home/nash1111/,vim/dein

let s:dein_path = expand('~/home/nash1111/dotfiles/home/.vim/dein')
let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github からclone
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_path)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_path
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_path, ':p')
endif

if dein#load_state(s:dein_path)
  call dein#begin(s:dein_path)

  let g:config_dir  = expand('~/dotfiles/home/.vim/dein/userconfig')
  let s:toml        = g:config_dir . '/plugins.toml'
  let s:lazy_toml   = g:config_dir . '/plugins_lazy.toml'

  " TOML 読み込み
  call dein#add('JuliaEditorSupport/julia-vim')
  call dein#add('scrooloose/nerdtree')
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif


" Required:
filetype plugin indent on
syntax enable

" インストールされていないプラグインがあればインストールする
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

