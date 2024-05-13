" enable line numbers
set relativenumber
set number       

syntax on    " enable syntax highlighting

" enable indent
set smartindent
set ai " enable auto-identation

set ls=2 " show status line
set cursorline " show cursor line

set encoding=UTF-8

call plug#begin()
  Plug 'doums/darcula'
call plug#end()

colorscheme darcula "enable darcula theme

" change block cursor when in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast
