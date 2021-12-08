"-----------------------------------------------------------------------------
" Plugins
"-----------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

source ~/.config/nvim/plugins/clojure.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/goyo.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/rust.vim
source ~/.config/nvim/plugins/tagbar.vim
source ~/.config/nvim/plugins/vim-bufkill.vim
source ~/.config/nvim/plugins/vim-colorschemes.vim
source ~/.config/nvim/plugins/vim-cpp.vim
source ~/.config/nvim/plugins/vim-dispatch-neovim.vim
source ~/.config/nvim/plugins/vim-dispatch.vim
source ~/.config/nvim/plugins/vim-gutentags.vim
source ~/.config/nvim/plugins/vim-jack-in.vim
source ~/.config/nvim/plugins/vim-polygot.vim
source ~/.config/nvim/plugins/vim-syntax-extra.vim

call plug#end()
doautocmd User PlugLoaded

"-----------------------------------------------------------------------------
" General Settings
"-----------------------------------------------------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set copyindent
set mouse=a
set spelllang=en_us
set nospell
set number
set rnu
set smartcase
set showcmd
set showmatch
set nohlsearch
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set background=dark
set hlsearch
set signcolumn=yes
set colorcolumn=80

highlight CursorLineNr ctermfg=Red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Jump to last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"-----------------------------------------------------------------------------
" Key Bindings
"-----------------------------------------------------------------------------
let mapleader = "\<Space>"

map <C-n> :NERDTreeToggle<CR>
nmap <C-p> :FZF<CR>
map <Leader>if gg=G<C-o><C-o>
nmap <Leader>bi :TagbarToggle<CR>

nnoremap <Leader>wv :vsplit<CR>
nnoremap <Leader>wh :split<CR>
nnoremap <Leader>wd :close<CR>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :BB<CR>
nnoremap <Leader>bd :BD<CR>
nnoremap <Leader>qq :qa!<CR>
nnoremap <Leader>t  :terminal<CR>
nnoremap <Leader>wf :echo @%<CR>
nnoremap <Leader>af :ls<CR>
nnoremap <Leader>no :noh<CR>
nnoremap <M-LeftMouse> :bn<CR>
nnoremap <M-RightMouse> :BB<CR>
nnoremap <C-S-LeftMouse> :ls<CR>
nnoremap <S-RightMouse> :BD<CR>

" copy and paste system clipboard
noremap <Leader>y "*y<CR>
noremap <Leader>p "*p<CR>
noremap <Leader>Y "+y<CR>
noremap <Leader>P "+p<CR>

" Delete all trailing whitespace in a file
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>



