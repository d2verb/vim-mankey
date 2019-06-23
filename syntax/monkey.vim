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
syn keyword mConditional if else
syn keyword mKeyword fn let return
syn match mOperator '+\|-\|*\|/\|!\|'
syn match mOperator '==\|!=\|<\|>\|'
hi def link mConditional Conditional
hi def link mKeyword Keyword
hi def link mOperator Operator

let b:current_syntax = 'monkey'
