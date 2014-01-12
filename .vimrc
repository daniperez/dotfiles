syntax on
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set incsearch
set ignorecase
set hlsearch
colorscheme desert 
"colorscheme zenburn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NEOBUNDLE (plugin installation)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CRTLP: easily search for files 
"
"    Help:
"    Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
"    Press <F5> to purge the cache for the current directory to get new files, remove
"    deleted files and apply new ignore options.
"    Press <c-f> and <c-b> to cycle between modes (file, buffers,...).
"    Press <c-d> to switch to filename only search instead of full path.
"    Press <c-r> to switch to regexp mode.
"    Use <c-j>, <c-k> or the arrow keys to navigate the result list.
"    Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
"    Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
"    Use <c-y> to create a new file and its parent directories.
"    Use <c-z> to mark/unmark multiple files and <c-o> to open them.
NeoBundle 'kien/ctrlp.vim'
" VIM_SESSION: 
"
"    The vim-session plug-in improves upon Vim's built-in :mksession command by
"    enabling you to easily and (if you want) automatically persist and restore
"    your Vim editing sessions. It works by generating a Vim script that restores
"    your current settings and the arrangement of tab pages and/or split windows
"    and the files they contain.
"
"    https://github.com/xolox/vim-session
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'
"
" Conf:
"    
"    Save an open session always on quit
let g:session_autosave = 'yes'
"    Session save automatic interval (in minutes)
let g:session_autosave_periodic = '4'
"    Less messages when saving/loading sessions
"let g:session_verbose_messages = '0'

" Wishlist:
" http://www.vim.org/scripts/script.php?script_id=2540
" http://www.vim.org/scripts/script.php?script_id=1528
" http://www.vim.org/scripts/script.php?script_id=3302


filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BUFFERS/TABS
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C++
map <f2> :w!<cr>:make<cr><cr>
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
