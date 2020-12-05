set showmode
set tags=$SRC_HOME/tags
set notitle

set hidden
set number
syntax on
filetype plugin indent on

"
" Ctrl+w opens a split window
"
nmap <C-x> :vsplit

"colorscheme paintbox
"colorscheme impact
"colorscheme darkblue
"colorscheme zenburn
" THIS ONE: colorscheme evening
"colorscheme koehler
colorscheme morning
"colorscheme PaperColor
"colorscheme greens

" The C code keywords (for, while, return etc) are ugly yellow and dark blue,
" which look okay on a light background, but unbearable on a dark background.
" The following changes the C statements to green, and comments to `brown' which
" looks like more like dull yellow to me
"hi Statement    term=bold cterm=NONE ctermfg=DarkGreen ctermbg=NONE gui=bold guifg=#ffff60 guibg=NONE
"hi Comment      term=bold cterm=NONE ctermfg=Grey      ctermbg=NONE gui=bold guifg=#ffff60 guibg=NONE

" Highlight Class and Function names
" syn match    cCustomParen    "(" contains=cParen,cCppParen
" syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
" syn match    cCustomScope    "::"
" syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
"hi cCustomFunc term=bold cterm=NONE ctermfg=DarkGreen      ctermbg=NONE gui=bold guifg=#ffff60 guibg=NONE

"let g:solarized_termcolors=16
"let g:solarized_visibility=high
"let g:solarized_bold=1
"let g:solarized_termtrans
"let g:solarized_bold | g:solarized_underline | g:solarized_italic
"syntax enable
"set background=dark
"colorscheme solarized
"colorscheme enigma
"colorscheme osx_like

"set statusline=%f%m%r\ [L=%04l,C=%04v][%p%%]\ [LEN=%L] [bn=%n]
set statusline=%f%m%r\ line\ %l\ of\ %L\ -%p%%-\ col\ %v\ -%n-
set laststatus=2


set hlsearch  " highlight search
set incsearch  " Incremental search, search as you type
set smartcase " Ignore case when searching lowercase

set showmode
" Make "set list" more useful.
set listchars+=tab:^-
set listchars+=trail:`

" Mimic Emacs Line Editing in Insert Mode Only
inoremap <C-A> <Home>
inoremap <C-B> <Left>
inoremap <C-E> <End>
inoremap <C-F> <Right>
inoremap <C-N> <Down>
inoremap <C-P> <Up>
inoremap <C-K> <Esc>lDa
inoremap <C-U> <Esc>d0xi
inoremap <C-Y> <Esc>Pa
inoremap <C-X><C-S> <Esc>:w<CR>a

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls']
    \}

" add bindings for LCS
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> <A-2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> gs :call LanguageClient#workspace_symbol()<CR>
