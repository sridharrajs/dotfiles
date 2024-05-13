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
