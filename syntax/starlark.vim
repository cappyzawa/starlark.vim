if exists('b:current_syntax')
  finish
endif

syn case match

syn keyword starlarkStatement return break continue lambda
syn keyword starlarkConditional if elif else if/end or not
syn keyword starlarkRepeat for in while
syn match starlarkType /\<def\>/

hi def link starlarkStatement Statement
hi def link starlarkConditional Conditional
hi def link starlarkRepeat Repeat
hi def link starlarkType Type

syn keyword starlarkKeyword None True False any all bool chr dict dir enumerate float gatattr hasattr hash int len list max min ord print range repr reversed set sorted str tuple type zip

hi def link starlarkKeyword Keyword

syn keyword starlarkTodo contained TODO FIXME
syn cluster starlarkCommentGroup contains=starlarkTodo
syn region starlarkComment start="#" end="$" contains=@starlarkCommentGroup,@Spell

hi def link starlarkTodo Todo
hi def link starlarkComment Comment

syn region starlarkBlock start="{" end="}" transparent fold
syn region starlarkParen start="(" end=")" transparent

let b:current_syntax = 'starlark'
