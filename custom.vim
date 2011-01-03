"****************************
" My VIM customizations
"****************************

"Don't update the display while executing macros
set lazyredraw

"Remove visual bell
set vb t_vb=
set novisualbell


"enable omnicompletion
set ofu=syntaxcomplete#Complete
set completeopt=menu,menuone,preview

"share clipboard
set clipboard+=unnamed

"editor UI fine tuning
set cursorline
set noerrorbells
set wrap
set whichwrap=b,s,<,>,~,[,]

"CTAGS
set tags=~/code/tags

"NERDTree customizations
let NERDTreeChDirMode=2

"edit vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>

"reload vim config
nmap <silent> <leader>sv :source ~/.vimrc<CR>

"custom mappings
nnoremap <leader>t :TlistToggle<CR>
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>
vnoremap <Tab> >>gV
vnoremap <s-Tab> <<gV

"switching between tabs
map <c-tab> :tabnext<cr>
map <c-s-tab> :tabprevious<cr>

imap <c-tab> <esc>:tabnext<cr>
imap <c-s-tab> <esc>:tabprevious<cr>

"CommandT switch
nnoremap <silent> <leader>t :CommandT<CR>

"Load OS dependent customizations
if has("mac")
    source ~/.vim/custom-mac.vim
elseif has("unix")
    source ~/.vim/custom-linux.vim
endif

"write as su
command! SudoW w !sudo tee % >/dev/null

"visual select most recently edited text
nmap gV `[v`]

"Add some files to the ignore list
set wildignore+=*.class,.git/**,.svn/**,target/**

"Set fullscreen
if has("gui_running")
  set lines=999 columns=999
endif
