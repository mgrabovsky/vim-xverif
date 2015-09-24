" Vim syntax highlighting for CryptoVerif
" Language:   CryptoVerif channels
" Filenames:  *.cv, *.cvl
" Maintainer: Matěj Grabovský <matej dot grabovsky at gmail>
" Licence:    MIT

if version < 600
    syn clear
elseif exists('b:current_syntax') && b:current_syntax == 'cryptoverif'
    finish
endif

syn case match

setlocal iskeyword+=39,45

syn keyword Keyword     channel collision const define defined equation equiv event
            \ event_abort expand find forall fun get implementation in inj insert
            \ length let letfun max maxlength new newChannel orfind otheruses out
            \ param proba process proof query secret secret1 set suchthat table time
            \ type yield
syn keyword Macro       AC ACU ACUN all assoc assocU bounded commut commut_group
            \ compos computational decompos exist fixed group inverse large manual
            \ noninteractive password pred random serial unchanged uniform unique
            \ useful_change
syn keyword Conditional if then else
syn match   Operator    /||\|&&\|!\|<=(\=\|[)=]=>\|<-\|:=/
syn match   Type        /:\s*\zs\i\+/
syn region  String      start=/"/ end=/"/ skip=/\\/
syn region  Comment     start=/(\*/ end=/\*)/ contains=cvTodo
syn keyword cvTodo      contained TODO FIXME NOTE XXX

hi link cvTodo Todo

let b:current_syntax = 'cryptoverif'

" vim: set et sw=4 ts=4 sts=4:
