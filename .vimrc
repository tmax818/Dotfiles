""""""""".vimrc""""""""
" author: tmax818
" file: .vimrc

""""""""""""""Settings""""""""""""""""""

set number
set hidden
set mouse=a
set cindent
set tabstop=4
set showcmd       
set linebreak


""""""Status Line""""""
set laststatus=2
set statusline=%F         " Path to the file
set statusline+=\        " Separator
set statusline+=FileType: " Label
set statusline+=%y        " Filetype of the file
set statusline+=%=        " Switch to the right side
set statusline+=%20(%l/%L%)
set statusline+=\        " Separator
set statusline+=%p 
set statusline+=%%
set statusline+=\        " Separator
set statusline+=%#todo#  "switch to todo highlight
set statusline+=%20.20{'tabstop='.&tabstop}



"""""" Change Cap-lock to Escape"""""""

"maps escape to the caps lock key when you enter Vim.  
au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

"returns normal functionality to caps lock when you quit.
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'


"this turns on syntax highlighting
syntax on

"""Closing Brackets"""""

inoremap " ""<left>
"inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"""" Leader Mappings""""""""

let mapleader=","

nnoremap <C-n> :NERDTreeToggle<CR>
inoremap <leader>l <right>
map <leader>ev :vsplit $MYVIMRC<cr>
map <leader>sv :source $MYVIMRC<cr>

"""Change Window Moving"""

map <leader>h :wincmd h<cr>
map <leader>j :wincmd j<cr>
map <leader>k :wincmd k<cr>
map <leader>l :wincmd l<cr>

""add NerdTree toggle"""
map <leader>n :NERDTreeToggle<cr>


