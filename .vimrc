set showmode
set tags=$SRC_HOME/tags
set notitle

set number
syntax on

"
" Ctrl+w opens a split window
"
nmap <C-\> :vsplit


"colorscheme paintbox
"colorscheme impact
"colorscheme darkblue
"colorscheme zenburn
colorscheme evening
"colorscheme koehler
"colorscheme morning
"colorscheme PaperColor
"colorscheme greens

" The C code keywords (for, while, return etc) are ugly yellow and dark blue,
" which look okay on a light background, but unbearable on a dark background.
" The following changes the C statements to green, and comments to `brown' which
" looks like more like dull yellow to me
hi Statement    term=bold cterm=NONE ctermfg=DarkGreen ctermbg=NONE gui=bold guifg=#ffff60 guibg=NONE
hi Comment      term=bold cterm=NONE ctermfg=Cyan      ctermbg=NONE gui=bold guifg=#ffff60 guibg=NONE

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
