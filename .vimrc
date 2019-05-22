" Appearance
set number
set nowrap
set guioptions-=r " remove right-hand scroll bar

" Encode
set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8

" File
set hidden
set autoread

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrapscan
nnoremap * *N

" Input
set expandtab
"autocmd FileType cpp setlocal noexpandtab
set autoindent
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set formatoptions-=ro

:set noswapfile"
:set nobackup
:set viminfo=
:set noundofile
:set cursorline

set clipboard+=unnamed

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
augroup END

set infercase

autocmd QuickFixCmdPost *grep* cwindow

set tags=./tags;,tags;

noremap <Space><CR> o<ESC>

set guioptions-=L " remove left-hand scroll bar

" dein
if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
let s:dein_dir = expand('~/.cache/dein')
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#add("~/.cache/dein/repos/github.com/Shougo/dein.vim")

  let s:toml_dir = expand('~/.cache/dein')
  let s:toml = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" NERDTree
let g:NERDTreeShowBookmarks=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTreeTabs
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_synchronize_view=0

" ale
let g:ale_sign_column_always = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1
let g:ale_c_cppcheck_options = '--enable=warning,style'

" unite.vim
let g:unite_enable_start_insert=1
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" vim-cheatsheet
let g:cheatsheet#cheat_file = '~/vcs/private/cheatsheets/vim.md'

" indentLine
let g:indentLine_enabled = 1
let g:indentLine_color_term = 111
let g:indentLine_color_gui = '#708090'
let g:indentLine_char = '¦' "use ¦, ┆ or │

" vim-easymotion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

set signcolumn=yes

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#min_keyword_length = 3
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#auto_completion_start_length = 1

" imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
" imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"

"hi clear SpellBad
"hi SpellBad term=reverse ctermbg=12 gui=undercurl guisp=#006400
"set spelllang+=cjk
