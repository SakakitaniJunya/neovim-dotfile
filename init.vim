" vim-plugの初期化
call plug#begin('~/.config/nvim/plugged')

" OmniSharp-Vimの設定
Plug 'OmniSharp/omnisharp-vim'

" NERDTree、シンタックスハイライト、コメント、ステータスライン、アイコン用プラグイン
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/vim-color-forest-night'

" コード補完と検索のためのプラグイン
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" vim-plugの終了
call plug#end()

" OmniSharp-Vimの設定
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_server_stdio = 1

" 基本設定
set clipboard=unnamed
set number
set hlsearch
set smartindent
set laststatus=2
set wildmenu
set lines=30 columns=100
set ruler
set history=1000
set encoding=utf8

" タブとスペースの設定
set autoindent
set cindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

" 検索時の設定
set ignorecase
set smartcase

" ファイルの自動読み込み
set autoread
au CursorHold * checktime

" NERDTree 自動読み込み
autocmd VimEnter * NERDTree


" バックアップとスワップファイルの設定
set backup
set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//

" カラースキームの設定
colorscheme everforest


" ファイルタイプに基づくプラグインの読み込み
filetype plugin indent on

" GUI版Neovimを使用している場合は、インストールされているフォントに合わせてください
" set guifont=DroidSansMono\ Nerd\ Font:h13

" NERDTreeのショートカット設定
nmap <C-n> :NERDTreeToggle<CR>

" vim-airlineのタブ切り替えショートカット設定
nmap <C-p> <Plug>(AirlineSelectPrevTab)
nmap <C-n> <Plug>(AirlineSelectNextTab)

" より便利なウィンドウ間の移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Escの設定
inoremap jk <Esc>
inoremap jj <Esc>

" SPLIT BORDERの設定
hi VertSplit cterm=none

" OmniSharp-Vimのキーバインド設定
nmap <leader>cs :OmniSharpStartServer<CR>
nmap <leader>cc :OmniSharpStopServer<CR>
nmap <leader>cd :OmniSharpGotoDefinition<CR>

