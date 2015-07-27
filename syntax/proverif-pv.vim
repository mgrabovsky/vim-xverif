" Vim syntax highlighting for ProVerif
" Language:  ProVerif typed pi-calculus
" Filenames: *.pv
" Maintainer: Matěj Grabovský <matej dot grabovsky at gmail>
" Licence:    MIT

if version < 600
    syn clear
elseif exists('b:current_syntax') && b:current_syntax == 'proverif-pv'
    finish
endif

syn case match

setlocal iskeyword+=39,45

syn keyword Keyword     among channel choice clauses const def elimtrue equation
            \ equivalence event expand fail forall free fun get in inj-event insert
            \ let letfun new noninterf not nounif or otherwise out param phase pred
            \ proba process proof putbegin query reduc set suchthat table type
            \ weaksecret yield
syn keyword Macro       attacker block data decompData decompDataSelect memberOptim
            \ mess private typeConverter
syn keyword Conditional if then else
syn match   Operator    /|\|!\|||\|&&\|->\|<->\|<=>\|==>/
syn match   Type        /:\s*\zs\i\+/
syn region  Comment     start=/(\*/ end=/\*)/ contains=Comment

let b:current_syntax = 'proverif-pv'

" vim: set et sw=4 ts=4 sts=4:
