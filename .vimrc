set spell

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SPACES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set smartindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set incsearch
set ignorecase
set hlsearch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"COLOR
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256 
"colorscheme koehler
" For light environment:
let g:zenburn_high_Contrast=1
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
map <CR><CR> <C-]>
"  stands for CTRL+<CR> or CTRL+<space>
"map   <C-W>]:tab split<CR>gT:q<CR>gt 
"map <PageUp> :pop<CR>
"map <PageDown> :tag<CR>
map <silent> <F3> :Explore<CR>
imap <silent> <F3> :Explore<CR>
map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabRetainCompletionType = 0
