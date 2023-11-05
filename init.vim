" vim-plugの初期化
call plug#begin('~/.config/nvim/plugged')

" OmniSharp-Vimの設定
Plug 'OmniSharp/omnisharp-vim'

" その他のプラグイン
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" vim-plugの終了
call plug#end()

" OmniSharp-Vimの設定
" macOSでは、OmniSharpサーバーのパスを直接指定する代わりに、
" OmniSharp-vimにサーバーの自動インストールを許可します。
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_server_stdio = 1

" その他の設定はそのまま維持
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

" GUI版Neovimを使用している場合は、インストールされているフォントに合わせてください
" set guifont=DroidSansMono\ Nerd\ Font:h13

" NERDTreeのショートカット設定
nmap <C-n> :NERDTreeToggle<CR>

" vim-airlineのタブ切り替えショートカット設定
nmap <C-p> <Plug>(AirlineSelectPrevTab)
nmap <C-n> <Plug>(AirlineSelectNextTab)

" Escの設定
inoremap jk <Esc>
inoremap jj <Esc>

" SPLIT BORDERの設定
hi VertSplit cterm=none

" OmniSharp-Vimのキーバインド設定
nmap <leader>cs :OmniSharpStartServer<CR>
nmap <leader>cc :OmniSharpStopServer<CR>
nmap <leader>cd :OmniSharpGotoDefinition<CR>

