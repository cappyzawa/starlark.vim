if exists('b:current_syntax')
  finish
endif

syn case match

syn keyword starlarkStatement None True False
syn keyword starlarkStatement return break continue lambda
syn keyword starlarkConditional if elif else if/end
syn keyword starlarkRepeat for while
syn keyword starlarkOperator and in not or
syn match starlarkType /\<def\>/

hi def link starlarkStatement Statement
hi def link starlarkConditional Conditional
hi def link starlarkRepeat Repeat
hi def link starlarkOperator Operator
hi def link starlarkType Type

syn keyword starlarkBuitin any all bool chr dict dir enumerate float gatattr hasattr hash int len list max min ord print range repr reversed set sorted str tuple type zip
syn keyword starlarkBuitin clear get items keys pop popitem setdefault update values
syn keyword starlarkBuitin append clear extend index insert pop remove
syn keyword starlarkBuitin union
syn keyword starlarkBuitin elem_ords capitalize codepoint_ords count endswith find format index isalpha isdigit islower isspace istitle isupper join lower lstrip partition replace rfind rindex rpartition rsplit rstrip split elems codepoints splitlines startswith strip title upper

hi def link starlarkBuitin Function

syn keyword starlarkInclude load

hi def link starlarkInclude Statement

syn keyword starlarkTodo contained TODO FIXME NOTE NOTES XXX
syn cluster starlarkCommentGroup contains=starlarkTodo
syn region starlarkComment start="#" end="$" contains=@starlarkCommentGroup,@Spell

hi def link starlarkTodo Todo
hi def link starlarkComment Comment

syn region starlarkBlock start="{" end="}" transparent fold
syn region starlarkParen start="(" end=")" transparent

syn sync minlines=500

let b:current_syntax = 'starlark'
