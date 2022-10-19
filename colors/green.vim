" Name:             koben
" Author:           GARSEC (Garuda Security)
" Update:           2022-20-10 01:43:02
" Groups:           telegram vim indonesia: https://t.me/VimID
" License:          Garsec

set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "green"
hi Normal         guifg=#ffffff ctermfg=NONE guibg=#000000 gui=NONE cterm=NONE
hi Comment        guifg=#585858 ctermfg=240  ctermbg=NONE gui=NONE cterm=NONE
hi Conditional    guifg=#00ff8f ctermfg=48   ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Define         guifg=#00ff8f ctermfg=48   ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Exception      guifg=#00ff8f ctermfg=48   ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Function       guifg=#00ff8f ctermfg=48   ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Include        guifg=#00ff8f ctermfg=48   ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Repeat         guifg=#00ff8f ctermfg=48   ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi String         guifg=#66ff66 ctermfg=None ctermbg=NONE gui=NONE cterm=NONE


