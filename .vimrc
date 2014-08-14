set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

set laststatus=2
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set number
set ruler
set scrolloff=3

" Highlight current line
set cursorline

" Highlight active column
"set cuc cul

augroup elixir
  au!
    au FileType elixir noremap <buffer> <leader>t :!mix test<cr>
augroup END
