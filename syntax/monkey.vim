if exists('b:current_syntax')
  finish
endif

" Constant
syn match mString /".\{-}"/
syn match mNumber /[[:digit:]]\+/
syn keyword mBoolean true false

hi def link mString String
hi def link mNumber Number
hi def link mBoolean Boolean

" BuilinFn
syn match mBuiltinFn "println\|print\|len\|push\|copy"
hi def link mBuiltinFn Function

" Statement
syn keyword mConditional if else
syn keyword mRepeat while
syn match mOperator '+\|-\|*\|/'
syn match mOperator '==\|!=\|<\|>'
syn keyword mKeyword fn return

hi def link mConditional Conditional
hi def link mRepeat Repeat
hi def link mOperator Operator
hi def link mKeyword Keyword

" Todo
syn keyword mTodo TODO FIXME XXX contained
hi def link mTodo Todo

" Comment
syn match mComment /\/\/.*/ contains=mTodo
hi def link mComment Comment

let b:current_syntax = 'monkey'
