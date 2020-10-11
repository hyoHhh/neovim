#!/bin/bash

yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm &&
yum install -y neovim python3-neovim &&
mkdir ~/.config/nvim/ &&
cd ~/.config/nvim/ &&
cd /usr/bin/ &&
mv vim vim.bak &&
mv nvim vim &&
cd ~/.config/nvim/ &&
touch init.vim &&
cat >> init.vim << EOF
let mapleader=" "

noremap m i
noremap i k
noremap M I
noremap k j
noremap j h
noremap I 5k
noremap K 5j
noremap <C-j> 0
noremap <C-l> $

noremap <LEADER><CR> :nohlsearch<CR>
noremap <LEADER>r :MarkdownPreview<CR>
noremap <LEADER>s :MarkdownPreviewStop<CR>

map <LEADER>tm :TableModeToggle<CR>

silent! unmap <LEADER>ig
autocmd WinEnter * silent! unmap <LEADER>ig

noremap = nzz
noremap - Nzz

map <LEADER>fd /\(\<\w\+\>\)\_s*\1
map <LEADER>gy :Goyo<CR>

map s <nop>

map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitblow<CR>:split<CR>
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4m

map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map tu :tabe<CR>

map tI :-tabnext<CR>
map tl :+tabnext<CR>
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

set number
"set relativenumber
"set cursorline
set wrap
set wildmenu
set showcmd
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set scrolloff=5
map <LEADER>sc :set spell!<CR>

EOF
