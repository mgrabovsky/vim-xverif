" Vim syntax highlighting for EasyCrypt
" Language:   EasyCrypt
" Filenames:  *.ec
" Maintainer: Matěj Grabovský <matej dot grabovsky at gmail>
" Licence:    MIT

if version < 600
    syn clear
elseif exists('b:current_syntax') && b:current_syntax == 'easycrypt'
    finish
endif

syn case match

setlocal iskeyword=a-z,A-Z,_
setlocal isident+=39

syn keyword ecAdmit     admit
syn keyword ecGlobal    abstract as axiom axiomatized choice class clone const
            \ declare end export goal hint import include instance lemma local
            \ module nosmt of op Pr pred print proof prover realize require search
            \ section Self theory timeout Top type why3 with
syn keyword ecInternal  debug pragma time undo
syn keyword ecProgram   assert equiv exists forall fun glob hoare in islossless let
            \ phoare proc res return then var while
syn keyword ecTactics   algebra alias apply assumption auto beta by byequiv byphoare
            \ bypr call case cfold change clear congr conseq cut delta done eager
            \ elim exact exfalso fel fieldeq fission fusion generalize have idtac
            \ inline intros iota kill left logic modpath move pose pr_bounded
            \ progress rcondf rcondt reflexivity rewrite right ringeq rnd rwnormal
            \ seq sim simplify skip smt sp split splitwhile subst swap symmetry
            \ transitivity trivial unroll wp zeta
syn keyword ecTacticals do expect first last strict try
syn keyword Conditional if elif else
syn keyword Statement   save qed
syn match   Operator    /\%(:\|\/\/\=\)=\|\/\/\|=>\|\/\\\|\\\/\|[<>~*%$&@^|#+-]/
syn match   Delimiter   /[\[\]{}!?]/
syn match   Type        /'\i\+/
syn region  String      start=/"/ end=/"/ skip=/\\/
syn region  Comment     start=/(\*/ end=/\*)/ contains=ecTodo
syn keyword ecTodo      contained TODO FIXME NOTE XXX

hi link ecAdmit     Todo
hi link ecGlobal    Keyword
hi link ecInternal  Macro
hi link ecProgram   Statement
hi link ecTactics   Keyword
hi link ecTacticals Function
hi link ecTodo      Todo

let b:current_syntax = 'easycrypt'

" vim: set et sw=4 ts=4 sts=4:
