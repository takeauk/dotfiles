"--------------------
"" 基本的な設定
"--------------------
"日本語入力(IM)自動オン/オフ
set imdisable

"新しい行のインデントを現在行と同じにする
set autoindent 
 
"バックアップファイルのディレクトリを指定する
set backupdir=$HOME/vimbackup
 
"クリップボードをWindowsと連携する
set clipboard=unnamed
  
"vi互換をオフする
set nocompatible
   
"スワップファイル用のディレクトリを指定する
set directory=$HOME/vimbackup
    
"タブの幅
set shiftwidth=4

"タブの代わりに空白文字を指定する
set expandtab
     
"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden
    
"インクリメンタルサーチを行う
set incsearch
       
"行番号を表示する
set number
        
"閉括弧が入力された時、対応する括弧を強調する
set showmatch
      
"新しい行を作った時に高度な自動インデントを行う
set smarttab
      
" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh
       
" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title

" カーソル行に線を表示する
set cursorline

" ペア括弧を表示する
set showmatch

" 行を折り返さない
set nowrap

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/main/.vim/bundle//repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/main/.vim/bundle/')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
