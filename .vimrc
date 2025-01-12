call plug#begin()

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'huyvohcmc/atlas.vim'
"Plug 'pbrisbin/vim-colors-off'
"Plug 'karoliskoncevicius/distilled-vim'
"Plug 'jaredgorski/fogbell.vim'
Plug 'kevinlawler/amberchrome'
Plug 'tpope/vim-commentary'
" List your plugins here
"Plug 'tpope/vim-sensible'

call plug#end()


"----------------- SETTINGS --------------

set tabstop=2
set mouse=a 
set foldmethod=indent

inoremap <f8> <Esc> :bnext<CR>
map <f8> :bnext<CR>
inoremap <f7> <Esc> :tabnext<CR>
map <f7> :tabnext<CR>
"nnoremap <f7> <C-W>w
inoremap <f9> <Esc> :q!<CR>
map <f9> :q!<CR>
inoremap <f11> <Esc> :wa<CR>
map <f11> :wa<CR>
inoremap <f12> <Esc> :wqa<CR>
map <f12> :wqa<CR>

set backspace=indent,eol,start
set nu!
inoremap çç <Esc>
set shiftwidth=4

map <f5> :!fltk-config --use-images --compile swaywall_UI.cxx && ./swaywall_UI<CR>

" colorscheme distilled
command Gogreen :hi Normal guifg=#1eba3b
command Goamber :hi Normal guifg=#b56f19

" ----------------------VIM-LSP FINETUNING------------------------

let g:lsp_code_action_ui = 'float'
let g:lsp_document_highlight_enabled = 0

let g:lsp_diagnostics_float_insert_mode_enabled = 0
let g:lsp_diagnostics_highlights_insert_mode_enabled = 0
let g:lsp_diagnostics_signs_insert_mode_enabled = 0
let g:lsp_diagnostics_virtual_text_insert_mode_enabled = 0
"let g:lsp_diagnostics_enabled = 0

let g:asyncomplete_auto_popup = 0

function! s:check_back_space() abort
				    let col = col('.') - 1
						    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
	  \ <SID>check_back_space() ? "\<TAB>" :
		  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


"========================================================
" -------------------- COLORS ---------------------------
"========================================================
"
hi Cursor           ctermbg=7    ctermfg=NONE cterm=NONE           guibg=#e4e4dd  guifg=NONE     gui=NONE

hi Normal           ctermbg=0    ctermfg=7    cterm=NONE           guibg=#24364b  guifg=#e4e4dd  gui=NONE
hi Title            ctermbg=NONE ctermfg=7    cterm=BOLDUNDERLINE  guibg=NONE     guifg=#e4e4dd  gui=BOLDUNDERLINE
hi Comment          ctermbg=NONE ctermfg=8    cterm=NONE           guibg=NONE     guifg=#6194ba  gui=NONE
hi SpecialComment   ctermbg=NONE ctermfg=12   cterm=NONE           guibg=NONE     guifg=#9fcce7  gui=NONE
hi Todo             ctermbg=7 ctermfg=4    		cterm=NONE  guibg=NONE     guifg=#65baf5  gui=BOLDUNDERLINE
hi Directory        ctermbg=NONE ctermfg=6    cterm=NONE           guibg=NONE     guifg=#69c5b4  gui=NONE

hi LineNr           ctermbg=NONE ctermfg=8    cterm=NONE           guibg=NONE     guifg=#6194ba  gui=NONE
hi CursorLineNr     ctermbg=NONE ctermfg=8    cterm=NONE           guibg=NONE     guifg=#6194ba  gui=NONE
hi ColorColumn      ctermbg=8    ctermfg=NONE cterm=NONE           guibg=#6194ba  guifg=NONE     gui=NONE
hi SignColumn       ctermbg=NONE    ctermfg=NONE cterm=NONE           guibg=#6194ba  guifg=NONE     gui=NONE

hi Folded           ctermbg=NONE ctermfg=4    cterm=NONE           guibg=NONE     guifg=#65baf5  gui=NONE
hi FoldColumn       ctermbg=NONE ctermfg=4    cterm=NONE           guibg=NONE     guifg=#65baf5  gui=NONE

hi Underlined       ctermbg=NONE ctermfg=NONE cterm=UNDERLINE      guibg=NONE     guifg=NONE     gui=UNDERLINE

hi Visual           ctermbg=NONE ctermfg=7    cterm=REVERSE        guibg=NONE     guifg=#e4e4dd  gui=REVERSE
hi VisualNOS        ctermbg=NONE ctermfg=NONE cterm=UNDERLINE      guibg=NONE     guifg=NONE     gui=UNDERLINE
hi MatchParen       ctermbg=NONE ctermfg=3    cterm=NONE           guibg=NONE     guifg=#ecb534  gui=NONE
hi IncSearch        ctermbg=11   ctermfg=0    cterm=NONE           guibg=#dfc56d  guifg=#24364b  gui=NONE
hi Search           ctermbg=11   ctermfg=0    cterm=NONE           guibg=#dfc56d  guifg=#24364b  gui=NONE
hi CursorColumn     ctermbg=8    ctermfg=7    cterm=NONE           guibg=#6194ba  guifg=#e4e4dd  gui=NONE
hi CursorLine       ctermbg=8    ctermfg=7    cterm=NONE           guibg=#6194ba  guifg=#e4e4dd  gui=NONE

hi StatusLine       ctermbg=17    ctermfg=7    cterm=NONE           guibg=#24364b  guifg=#6194ba  gui=NONE
hi StatusLineNC     ctermbg=17   ctermfg=8   cterm=NONE           guibg=#24364b  guifg=#6194ba  gui=NONE
hi VertSplit        ctermbg=NONE ctermfg=8    cterm=NONE           guibg=NONE     guifg=#6194ba  gui=NONE
hi WildMenu         ctermbg=12   ctermfg=0    cterm=NONE           guibg=#9fcce7  guifg=#24364b  gui=NONE
hi ModeMsg          ctermbg=NONE ctermfg=7    cterm=NONE           guibg=NONE     guifg=#65baf5  gui=NONE

hi DiffAdd          ctermbg=2    ctermfg=0    cterm=NONE           guibg=#88c563  guifg=#24364b  gui=NONE
hi DiffDelete       ctermbg=1    ctermfg=0    cterm=NONE           guibg=#e76d6d  guifg=#24364b  gui=NONE
hi DiffChange       ctermbg=0    ctermfg=3    cterm=UNDERLINE      guibg=#24364b  guifg=#ecb534  gui=UNDERLINE
hi DiffText         ctermbg=3    ctermfg=0    cterm=NONE           guibg=#ecb534  guifg=#24364b  gui=NONE

hi Pmenu            ctermbg=7    ctermfg=0    cterm=NONE           guibg=#e4e4dd  guifg=#24364b  gui=NONE
hi PmenuSel         ctermbg=6    ctermfg=0   cterm=NONE        guibg=#24364b  guifg=#9fcce7  gui=REVERSE
hi PmenuSbar        ctermbg=7    ctermfg=NONE cterm=NONE           guibg=#e4e4dd  guifg=NONE     gui=NONE
hi PmenuThumb       ctermbg=8    ctermfg=NONE cterm=NONE           guibg=#6194ba  guifg=NONE     gui=NONE

hi SpellBad         ctermbg=NONE ctermfg=1    cterm=UNDERCURL      guibg=NONE     guifg=#e76d6d  gui=UNDERCURL
hi SpellCap         ctermbg=NONE ctermfg=1    cterm=UNDERCURL      guibg=NONE     guifg=#e76d6d  gui=UNDERCURL
hi SpellLocal       ctermbg=NONE ctermfg=9    cterm=UNDERCURL      guibg=NONE     guifg=#edbabf  gui=UNDERCURL
hi SpellRare        ctermbg=NONE ctermfg=9    cterm=UNDERCURL      guibg=NONE     guifg=#edbabf  gui=UNDERCURL

hi ErrorMsg         ctermbg=1    ctermfg=7    cterm=NONE           guibg=#e76d6d  guifg=#e4e4dd  gui=NONE
hi WarningMsg       ctermbg=NONE ctermfg=1    cterm=NONE           guibg=NONE     guifg=#e76d6d  gui=NONE
hi MoreMsg          ctermbg=NONE ctermfg=3    cterm=NONE           guibg=NONE     guifg=#65baf5  gui=NONE
hi Question         ctermbg=NONE ctermfg=3    cterm=NONE           guibg=NONE     guifg=#65baf5  gui=NONE

hi TabLine          ctermbg=8    ctermfg=0    cterm=NONE           guibg=#6194ba  guifg=#24364b  gui=NONE
hi TabLineSel       ctermbg=0    ctermfg=7   cterm=none        guibg=#24364b  guifg=#9fcce7  gui=REVERSE
hi TabLineFill      ctermbg=8    ctermfg=0    cterm=NONE           guibg=#6194ba  guifg=#24364b  gui=NONE

hi Error            ctermbg=4 ctermfg=7    cterm=NONE        guibg=NONE     guifg=#e76d6d  gui=REVERSE
hi Ignore           ctermbg=NONE ctermfg=NONE cterm=NONE           guibg=NONE     guifg=NONE     gui=NONE

" Clear ------------------------------------------------------------------------

hi clear Number
hi clear Character
hi clear Statement
hi clear Type
hi clear Function
hi clear PreProc
hi clear Special
hi clear Identifier
hi clear Constant
hi clear Boolean
hi clear String
hi clear Delimiter
hi clear Conceal

" Links ------------------------------------------------------------------------

" R
hi link rOKeyword  SpecialComment
hi link rOTag      SpecialComment
hi link rOTitleTag SpecialComment
hi link rOExamples Comment
hi link rOTitle    Comment

" markdown
hi link markdownHeadingDelimiter Title
hi link markdownCodeDelimiter    SpecialComment

" rmarkdown
hi link rmdCodeDelim       SpecialComment
hi link rmdRChunkDelim     SpecialComment
hi link rmdInlineDelim     SpecialComment
hi link rmdYamlBlockDelim  SpecialComment

hi link SpecialChar        Normal
hi link SpecialKey         SpecialComment
hi link Conceal            SpecialComment
hi link NonText            Comment
hi link Whitespace         Comment

" quick fix window
hi link QuickFixLine       Visual
hi link qfFileName         Directory
hi link qfLineNr           Comment
hi link qfSeparator        Comment

" vim help
hi link helpSectionDelim   Comment
hi link helpHyperTextJump  Directory
hi link helpExample        Comment
hi link helpNote           Todo
hi link helpHyperOption    SpecialComment
hi link helpSpecial        SpecialComment
hi link helpHyperTextEntry SpecialComment
hi link helpCommand        SpecialComment

" Plugins ----------------------------------------------------------------------

" pandoc plugin
au FileType rmarkdown hi link pandocDelimitedCodeBlockLanguage    SpecialComment
au FileType rmarkdown hi link pandocDelimitedCodeBlock            SpecialComment
au FileType rmarkdown hi link pandocDelimitedCodeBlockStart       SpecialComment
au FileType rmarkdown hi link pandocDelimitedCodeBlockEnd         SpecialComment
au FileType rmarkdown hi link pandocYAMLHeader                    SpecialComment
au FileType rmarkdown hi link pandocAtxHeader                     Title
au FileType rmarkdown hi link pandocAtxStart                      Title

" vim plug
hi link plug1        Normal
hi link plug2        SpecialComment
hi link plugName     SpecialComment
hi link plugBracket  Comment
hi link plugDash     Comment
hi link plugDeleted  WarningMsg
hi plugInstall       ctermbg=0  ctermfg=2 cterm=NONE  guibg=#24364b  guifg=#88c563  gui=NONE

" git-gutter
hi GitGutterDelete            ctermbg=0  ctermfg=1 cterm=NONE        guibg=#24364b  guifg=#e76d6d  gui=NONE
hi GitGutterAdd               ctermbg=0  ctermfg=2 cterm=NONE        guibg=#24364b  guifg=#88c563  gui=NONE
hi GitGutterChange            ctermbg=0  ctermfg=3 cterm=NONE        guibg=#24364b  guifg=#ecb534  gui=NONE
hi GitGutterChangeDelete      ctermbg=0  ctermfg=9 cterm=NONE        guibg=#24364b  guifg=#edbabf  gui=NONE
hi GitGutterDeleteLine        ctermbg=1  ctermfg=0 cterm=NONE        guibg=#e76d6d  guifg=#24364b  gui=NONE
hi GitGutterAddLine           ctermbg=2  ctermfg=0 cterm=NONE        guibg=#88c563  guifg=#24364b  gui=NONE
hi GitGutterChangeLine        ctermbg=0  ctermfg=3 cterm=UNDERLINE   guibg=#24364b  guifg=#ecb534  gui=UNDERLINE
hi GitGutterChangeDeleteLine  ctermbg=0  ctermfg=9 cterm=UNDERLINE   guibg=#24364b  guifg=#edbabf  gui=UNDERLINE



"==================================================================
" ------------------------ CUSTOM COLORS --------------------------
" =================================================================

hi TabLine guibg=NONE
hi TabLine guifg=#444444
hi TabLineFill guibg=NONE
hi TabLineSel guifg=#888888 guibg=#222222    " #24364b
hi Normal ctermbg=none guibg=NONE
"hi Normal ctermbg=232
hi Normal ctermfg=130 guifg=#b56f19 " amber / #2d7d21 #27b52b #1eba3b green
"hi Normal ctermfg=166    "amber bright
hi LineNr ctermfg=242 guifg=#666666 " #055e15 " #666666
hi Comment ctermfg=242 guifg=#777777
hi SignColumn guibg=NONE
hi Error guifg=#bbbbbb guibg=#0000dd
hi StatusLine guifg=#cccccc
hi ModeMsg guifg=#cccccc
set termguicolors



