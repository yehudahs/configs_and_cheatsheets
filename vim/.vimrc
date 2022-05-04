set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'ycm-core/YouCompleteMe'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'Syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'frazrepo/vim-rainbow'
Plugin 'micha/vim-colors-solarized'
Plugin 'https://github.com/tabnine/YouCompleteMe.git'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" this configuration is for syntastic
" taken from https://github.com/vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd vimenter * ++nested colorscheme gruvbox
set tags+=./TAGS;/,../TAGS,c:\tags\TAGS



" " Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
let c = 1
while c <= 99
  execute "nnoremap " . c . "gb :" . c . "b\<CR>"
  let c += 1
endwhile

" taken from buffer article:
" https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
"" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_idx_mode = 1
"" This allows buffers to be hidden if you've modified a buffer.
"" This is almost a must if you wish to use buffers in this way.
"set hidden
"
"" To open a new empty buffer
"" This replaces :tabnew which I used to bind to this mapping
"nmap <leader>T :enew<cr>
"
"" Move to the next buffer
"nmap <leader>l :bnext<CR>
"
"" Move to the previous buffer
"nmap <leader>h :bprevious<CR>
"
"" Close the current buffer and move to the previous one
"" This replicates the idea of closing a tab
"nmap <leader>bq :bp <BAR> bd #<CR>
"
"" Show all open buffers and their status
"nmap <leader>bl :ls<CR>
"

" taken from https://github.com/preservim/nerdtree


nnoremap <F> :GoDebugStop<CR>
nnoremap <S-F5> :GoDebugStop<CR>

" vim-go configs
" let g:go_debug_windows = {
"             \ 'vars':       'leftabove 30vnew',
"            \ 'stack':      'leftabove 20new',
"             \ 'goroutines': 'botright 10new',
"             \ 'out':        'botright 5new',
"   \ }

let g:go_debug_windows = {
    \ 'vars':       'rightbelow 60vnew',
    \ 'stack':      'rightbelow 10new',
    \ 'goroutines': 'rightbelow 10new',
    \ 'out':        'botright 10new',
\ }
let g:go_fmt_command = "gofmt"
let g:go_fmt_autosave = 0

au BufWritePost *.c,*.cpp,*.h,*.go,*.py,*.m silent! !ctags -R --exclude="*.symbolsmap.h" . &


nnoremap <silent> <C-p> :Files<CR>

" save and restore sessions
map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3



