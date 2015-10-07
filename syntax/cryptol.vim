" Vim syntax highlighting for Cryptol
" Language:   Cryptol
" Filenames:  *.cry
" Maintainer: Matěj Grabovský <matej dot grabovsky at gmail>
" Licence:    MIT

if version < 600
    syn clear
elseif exists('b:current_syntax') && b:current_syntax == 'cryptol'
    finish
endif

syn case match

setlocal iskeyword=a-z,A-Z,_,39,48-57
setlocal isident+=39,48-57

syn keyword Keyword     Arith Bit Cmp False Inf True else export extern fin if inf
            \ lg2 max min newtype pragma property then type width
syn keyword Structure   module import where
syn match   Operator    /||\|\^\^\=\|&&\|->\|[!=]=\|[<>]=\|#\|!!\=\|@@\=\|>\{1,3}\|<\{1,3}\|[-+*/%~]\|\.\.\.\=/
syn match   Delimiter   /[{}\[\]]/
syn match   Number      /\<\%(\d\+\|0b[01]\+\|0o[0-7]\+\|0x[0-9a-fA-F]\+\)\>/
syn region  String      start=/"/ end=/"/ skip=/\\/
syn region  Comment     start=#/\*# end=#\*/# contains=cryTodo,Comment
syn region  Comment     start=#//# end=#$# contains=cryTodo,Comment
syn keyword cryTodo     contained TODO FIXME NOTE XXX

hi link cryTodo      Todo

let b:current_syntax = 'cryptol'

" vim: set et sw=4 ts=4 sts=4:
