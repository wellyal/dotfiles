" Make vim more useful {{{
set nocompatible
" }}}

source $HOME/dotfiles/vim/plug.vim

" Syntax highlighting {{{
set t_Co=256
syntax on
" }}}

set backupdir=~/.backup//
set directory=~/.backup//

iab gmg Guilherme Mangabeira Gregio<guilherme@gregio.net>

" Elm configs
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1

" Ale fixers configs
let g:ale_fixers = {
\ 'javascript': ['eslint']
\}

let g:ale_fix_on_save = 1

"......................................................................ARQUIVO
"" Sai fora na marra!
imap <F12> <esc>:wqa!<cr>
map <F12> :wqa!<cr>
" Abreviacoes-uteis para sua sanidade mental
cab W w| cab Q q| cab Wq wq| cab wQ wq| cab WQ wq

" Copy e paste
nmap <F3> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F3> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

hi    Search ctermbg=green ctermfg=black
hi IncSearch ctermbg=black ctermfg=cyan
set is hls ic scs  "opções espertas de busca

set number
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set clipboard=unnamed
set laststatus=2
set encoding=utf-8
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set background=dark
set clipboard=unnamedplus

" CtrlP Config
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files . -co --exclude-standard|egrep -v "\.(git|svn|jpg|jpeg|png|gif)$"']

" CtrlP Config
map <C-n> :NERDTreeToggle<CR>

" JSBEAUTIFY shorcuts
" for javascript
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

"colo OceanicNext
