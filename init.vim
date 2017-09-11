call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --gocode-completer --tern-completer' }
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/denite.nvim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'w0rp/ale'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()

language en_US
set expandtab
set shiftwidth=2
set softtabstop=2
set number
set laststatus=2


"Plug 'scrooloose/nerdtree'
let g:NERDTreeWinSize=20  "set NERDTree window width
"autocmd vimenter * NERDTree "open a NERDTree automatically
"map <C-n> :NERDTreeToggle<CR>  ":NERDTreeToggle => Ctrl-n

" Plug 'nathanaelkane/vim-indent-guides'
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
"let g:indent_guides_enable_on_vim_startup = 1

"Plug 'altercation/vim-colors-solarized'
set background=dark
" Uncomment the next line if your terminal is not configured for solarized
let g:solarized_termcolors=256
colorscheme solarized

"Plug 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

"Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='base16_solarized'
let g:airline_solarized_bg='dark'
let g:airline_base16_solarized = 1

"Plug 'w0rp/ale'
let g:airline#extensions#ale#enabled = 1 " ale message on airline status bar
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
" let g:ale_fix_on_save = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep' " use ag in ack plug in

" Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1  " Turn on case insensitive feature
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
