" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

colorscheme jellybeans 
set cindent
set tabstop=2
set shiftwidth=2
filetype plugin indent on
syntax on
set mouse=a
set expandtab
set smarttab
set number
"Show hide caracters (do not use expandtab)"
set list
set lcs+=tab:▸·,space:·,nbsp:.
"Autocomplet for command menu"
set wildmenu
"Highlight matching [{}]"
set showmatch
"Highlight searchs"
set hlsearch

"NERDTree"
"
map <F2> :NERDTreeToggle<CR>

"TagBar"
map <F8> :TagbarToggle<CR>

"Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_python_checkers = ['python']"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"AirLine"
let g:airline_section_b = '%{strftime("%c")}'
let g:airline#extensions#tabline#enabled = 1

set laststatus=2

