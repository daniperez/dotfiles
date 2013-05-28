syntax on
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set incsearch
set ignorecase
set hlsearch
colorscheme zenburn 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"BUFFERS/TABS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set previewheight=20
" do not change the size of every buffer when splitting
set noea
" allow buffer switching without saving
set hidden
nmap <C-Left> :tabprevious<cr>
nmap <C-Right> :tabnext<cr>
map <C-Left> :tabprevious<cr>
map <C-Right> :tabnext<cr>
imap <C-Left> <ESC>:tabprevious<cr>i
imap <C-Right> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>:BufExplorer<cr>
imap <C-t> <ESC>:tabnew<cr>:BufExplorer<cr>
map <C-W>t :tab split<CR>
" Switch windows
map <Tab> <C-W>w
map <CR><CR> <C-]>
"  stands for CTRL+<CR> or CTRL+<space>
"map   <C-W>]:tab split<CR>gT:q<CR>gt 
"map <PageUp> :pop<CR>
"map <PageDown> :tag<CR>
map <silent> <F3> :Explore<CR>
imap <silent> <F3> :Explore<CR>
map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>

" C++
map <f2> :w!<cr>:make<cr><cr>

" ~/.vimrc
" Make Vim recognize xterm escape sequences for Page and Arrow
" keys combined with modifiers such as Shift, Control, and Alt.
" See http://www.reddit.com/r/vim/comments/1a29vk/_/c8tze8p
if &term =~ '^screen'
  " Page keys http://sourceforge.net/p/tmux/tmux-code/ci/master/tree/FAQ
  execute "set t_kP=\e[5;*~"
  execute "set t_kN=\e[6;*~"

  " Arrow keys http://unix.stackexchange.com/a/34723
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif
