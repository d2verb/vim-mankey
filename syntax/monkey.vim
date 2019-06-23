if exists('b:current_syntax')
  finish
endif

" Constant
syn match mString /".*"/
syn match mNumber /[[:digit:]]\+/
syn keyword mBoolean true false
hi def link mNumber Number
hi def link mBoolean Boolean

" Identifier
syn match mIdentifier /[[:alpha:]_]*/
syn match mFunction /[[:alpha:]_]*/
hi def link mIdentifier NONE
hi def link mFunction Function

" Statement
syn keyword mConditional if else while
syn keyword mKeyword fn return
syn match mOperator '+\|-\|*\|/\|!\|'
syn match mOperator '==\|!=\|<\|>\|'
hi def link mConditional Conditional
hi def link mKeyword Keyword
hi def link mOperator Operator

" Todo
syn keyword mTodo TODO FIXME XXX contained
hi def link mTodo Todo

" Comment
syn match mComment /\/\/.*/ contains=mTodo
hi def link mComment Comment

let b:current_syntax = 'monkey'
