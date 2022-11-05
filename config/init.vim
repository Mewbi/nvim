call plug#begin()
    Plug 'mhinz/vim-signify'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'chriskempson/base16-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()

set number
set relativenumber
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors
set clipboard+=unnamedplus
set splitbelow

colorscheme base16-synth-midnight-dark

map <S-down> <Nop>
inoremap <C-l> <Esc>A<Space>{<Enter>}<Esc>O
inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A
inoremap <S-up> <ESC>V
inoremap <S-down> <ESC>V
nnoremap <S-up> V
nnoremap <S-down> V
xnoremap <S-up> k
xnoremap <S-down> j
nmap <A-up> :m -2<CR>
nmap <A-down> :m +1<CR>:q

nnoremap <C-t> :10new<CR>:terminal<CR>i

"nnoremap <leader>n :nerdtreefocus<cr>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-p> :Files<CR>

"source ~/.config/nvim/cyclecolor.vim
"map <F7> :CycleColorNext<CR>
"map <F6> :CycleColorPrev<CR>

"autocmd VimEnter * NERDTree | wincmd p

"source ~/.config/nvim/coc.vim
"map <C-f> <Nop>
"nnoremap <C-f> <Plug>(coc-codeaction)
"inoremap <C-f> <ESC><Plug>(coc-codeaction)I
