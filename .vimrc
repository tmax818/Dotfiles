
<<<<<<< HEAD




=======
""""""""""""""Settings""""""""""""""""""

set number
set hidden
set mouse=a
set laststatus=2
set statusline=%f         " Path to the file
set statusline+=\ \       " Separator
set statusline+=Buffer:   " Label
set statusline+=%n        " buffer number
set statusline+=\ \       " Separator
set statusline+=FileType: " Label
set statusline+=%y        " Filetype of the file
set statusline+=%=        " Switch to the right side
set statusline+=Current:\ %2l\ Total:\ %2L
set statusline+=\ \       " Separator
set statusline+=%p 
set statusline+=%% 

"""""" Change Cap-lock to Escape"""""""

"maps escape to the caps lock key when you enter Vim.  
au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

"returns normal functionality to caps lock when you quit.
au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'


"this turns on syntax highlighting
>>>>>>> 850fb6e0b9fb581deaa9e43b5e3a38e0a1328705
syntax on

let mapleader=","


nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel


"""" Leader Mappings""""""""

map <leader>ev :vsplit $MYVIMRC<cr>
map <leader>sv :source $MYVIMRC<cr>
