set path+=**
set wildmode=longest,list,full
set wildmenu
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

" Disable netrw
let loaded_netrwPlugin = 1

call plug#begin('~/.vim/plugged')

" LSP plugins
Plug 'neovim/nvim-lspconfig'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'
"Plug 'onsails/lspkind-nvim'
"Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'

" Tree-sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" UI
Plug 'gruvbox-community/gruvbox'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'

" Utilities
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" prettier
Plug 'sbdchd/neoformat'

call plug#end()

lua require("cow")
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

" Quick navigation between splits
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

vnoremap <leader>p "_dP

nnoremap <leader>y "+y
vnoremap <leader>y "+y

nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
nnoremap <leader>= :Neoformat<CR>

inoremap <C-c> <esc>

" fun! EmptyRegisters()
"     let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
"     for r in regs
"         call setreg(r, [])
"     endfor
" endfun

" ES
com! W w

augroup THE_COW
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

