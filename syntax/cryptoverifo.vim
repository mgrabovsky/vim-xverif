" Vim syntax highlighting for CryptoVerif
" Language:   CryptoVerif oracles
" Filenames:  *.ocv
" Maintainer: Matěj Grabovský <matej dot grabovsky at gmail>
" Licence:    MIT

if version < 600
    syn clear
elseif exists('b:current_syntax') && b:current_syntax == 'cryptoverifo'
    finish
endif

syn case match

setlocal iskeyword+=39,45

syn keyword Keyword     collision const define defined do else end equation equiv
            \ event event_abort expand find forall foreach fun get implementation in
            \ inj insert length let letfun max maxlength newOracle orfind otheruses
            \ param proba process proof query return secret secret1 set suchthat
            \ table time type
syn keyword Macro       AC ACU ACUN all assoc assocU bounded commut commut_group
            \ compos computational decompos exist fixed group inverse large manual
            \ noninteractive password pred random serial unchanged uniform unique
            \ useful_change
syn keyword Conditional if then else
syn match   Operator    /||\|&&\|!\|<=(\=\|[)=]=>\|<-R\=\|:=/
syn match   Type        /:\s*\zs\i\+/
syn region  Comment     start=/(\*/ end=/\*)/ contains=cvTodo
syn keyword cvTodo      contained TODO FIXME NOTE XXX

hi link cvTodo Todo

let b:current_syntax = 'cryptoverifo'

" vim: set et sw=4 ts=4 sts=4:
