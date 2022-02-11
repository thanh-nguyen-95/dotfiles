" Disable netrw
let loaded_netrwPlugin = 1

call plug#begin('~/.vim/plugged')

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Tree-sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" UI
Plug 'gruvbox-community/gruvbox'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'

" Utilities
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
Plug 'lukas-reineke/indent-blankline.nvim'

"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" prettier
Plug 'sbdchd/neoformat'

call plug#end()

let loaded_matchparen = 1
let mapleader = " "

" Quick navigation between splits
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Resize splits
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>

" Move line(s) of code
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Copy/Paste from system clipboard
vnoremap <leader>p "_dP
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <leader>d "_d

" Misc. mapping
inoremap <C-c> <esc>

augroup THE_COW
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END
