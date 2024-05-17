set nocompatible " disable compactability with vim
set nobackup " Do not save backup files.
set history=1000 " Set the commands to save in history default number is 20.

" enable line numbers
set relativenumber
set number

syntax on    " enable syntax highlighting

filetype on " enable file type detection
filetype plugin on " enable plugins
filetype indent on " load intent

set shiftwidth=4 " Set shift width to 4 spaces.
set tabstop=2 " Set tab width to 2 columns.

set expandtab " Use space characters instead of tabs.

set scrolloff=10 " Do not let cursor scroll below or above N number of lines when scrolling.

set nowrap " While searching though a file incrementally highlight matching characters as you type.
set ignorecase " Ignore capital letters during search.
set smartcase " Override the ignorecase option if searching for capital letters.
set showmatch " Show matching words during a search.
set hlsearch " Use highlighting when doing a search.
set incsearch " search as you type

set showcmd " Show partial command you type in the last line of the screen.
set showmode " Show the mode you are on the last line.

" auto completion
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" enable indent
set smartindent
set autoindent " enable auto-identation

set ls=2 " show status line
set cursorline " show cursor line

set encoding=UTF-8

call plug#begin()
  Plug 'doums/darcula'
  Plug 'editorconfig/editorconfig-vim' "EditorConfigReload to reload configs
  Plug 'preservim/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'airblade/vim-gitgutter'
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

" disable arrow keys
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
  exec 'noremap' key '<Nop>'
  exec 'cnoremap' key '<Nop>'
endfor

set clipboard=unnamed


" Press the space bar to type the : character in command mode.
nnoremap <space> :


" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


" status lines
" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

nnoremap <F3> :NERDTreeToggle<cr>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" git gutter configs
set signcolumn=yes
" let g:gitgutter_highlight_lines = 1
" let g:gitgutter_highlight_linenrs = 1
let g:gitgutter_async = 0 " run diffs synchronously

" Your vimrc
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
