let s:save_cpo = &cpo
set cpo&vim

function! starlark#set_syntax(contained) abort
  let l:option = ''
  if a:contained
    let l:option = 'contained'
  endif
  syn case match
  exec 'syn keyword starlarkStatement None True False ' . l:option
  exec 'syn keyword starlarkStatement return break continue lambda ' l:option
  exec 'syn keyword starlarkConditional if elif else if/end ' . l:option
  exec 'syn keyword starlarkRepeat for while ' . l:option
  exec 'syn keyword starlarkOperator and in not or ' . l:option
  exec 'syn match starlarkType /\<def\>/ ' . l:option

  hi def link starlarkStatement Statement
  hi def link starlarkConditional Conditional
  hi def link starlarkRepeat Repeat
  hi def link starlarkOperator Operator
  hi def link starlarkType Type

  exec 'syn keyword starlarkBuitin any all bool chr dict dir enumerate float gatattr hasattr hash int len list max min ord print range repr reversed set sorted str tuple type zip ' . l:option
  exec 'syn keyword starlarkBuitin clear get items keys pop popitem setdefault update values ' . l:option
  exec 'syn keyword starlarkBuitin append clear extend index insert pop remove ' . l:option
  exec 'syn keyword starlarkBuitin union ' . l:option
  exec 'syn keyword starlarkBuitin elem_ords capitalize codepoint_ords count endswith find format index isalpha isdigit islower isspace istitle isupper join lower lstrip partition replace rfind rindex rpartition rsplit rstrip split elems codepoints splitlines startswith strip title upper '. l:option

  hi def link starlarkBuitin Function

  exec 'syn keyword starlarkInclude load ' . l:option

  hi def link starlarkInclude Statement

  syn keyword starlarkTodo contained TODO FIXME NOTE NOTES XXX
  syn cluster starlarkCommentGroup contains=starlarkTodo
  syn region starlarkComment start="#" end="$" contains=@starlarkCommentGroup,@Spell

  hi def link starlarkTodo Todo
  hi def link starlarkComment Comment

  exec 'syn region starlarkBlock start="{" end="}" transparent fold ' . l:option
  exec 'syn region starlarkParen start="(" end=")" transparent ' . l:option

  exec 'syn region starlarkString start=+"+ skip=+\\\\\|\\"+ end=+"+ ' . l:option
  exec 'syn region starlarkString start=+`+ end=+`+ ' . l:option

  hi def link starlarkString String

  syn sync minlines=500
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
