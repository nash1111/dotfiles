if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/home/nash1111/.vim/dein/repos/github.com/Shougo/dein.vim/,/home/nash1111/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/nash1111/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/nash1111/.vimrc', '/home/nash1111/.vim/dein/userconfig/plugins.toml', '/home/nash1111/.vim/dein/userconfig/plugins_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/nash1111/.vim/dein'
let g:dein#_runtime_path = '/home/nash1111/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/nash1111/.vim/dein/.cache/.vimrc'
let &runtimepath = '/home/nash1111/.vim/dein/repos/github.com/Shougo/dein.vim/,/home/nash1111/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/home/nash1111/.vim/dein/repos/github.com/Shougo/dein.vim,/home/nash1111/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim80,/home/nash1111/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/nash1111/.vim/after'
filetype off
