set nocompatible

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

call plug#begin('~/.vim/plugged')

" Syntax and language improvements
" Plug 'pangloss/vim-javascript'
"Plug 'isruslan/vim-es6'
"Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
"Plug 'elzr/vim-json'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
"Plug 'othree/es.next.syntax.vim'
"Plug 'vim-scripts/SyntaxComplete'
" HerringtonDarkholme/yats.vim
" othree/html5.vim

" General
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'marijnh/tern_for_vim'
Plug 'ramitos/jsctags'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'

" Color themes
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'

" Add plugins to &runtimepath
call plug#end()


" Ctags settings
" use universal Ctags

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" GitGutter
set updatetime=250
set signcolumn=yes

" Themes and syntax
filetype plugin indent on
if (has("termguicolors"))
  set termguicolors
endif
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'soft'
autocmd BufNewFile,BufRead *.es6 set filetype=javascript.jsx "yajs will see it as javascript filetype
set listchars=eol:¬,tab:␣␣,trail:~,extends:>,precedes:<,space:␣
set list
set number
set nowrap
set shiftwidth=2
set tabstop=2
set expandtab

" react jsx highlights for .js
let g:jsx_ext_required = 0
