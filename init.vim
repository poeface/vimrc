
set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~\AppData\Local\nvim\bundle\Vundle.vim
call vundle#begin()            " required
Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================

Plugin 'arcticicestudio/nord-vim'
Plugin 'dracula/vim'
Plugin 'wfxr/code-minimap'
Plugin 'wfxr/minimap.vim' 
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'

" ===================
" end of plugins
" ===================
call vundle#end()               " required
filetype plugin indent on       " required


" My configuation stuff
syntax enable
set relativenumber
set tabstop=4
set shiftwidth=4
set smarttab
colo dracula

" remaps so the terminal mode can be exited more easily
:tnoremap <Esc> <C-\><C-n>
:tnoremap <C-[> <C-\><C-n>


" Scroll wheel resizing for the font
let s:fontsize = 12
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! Consolas:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a
