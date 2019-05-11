if exists('b:current_syntax')
  finish
endif

let s:syn_with_contained = 0

call starlark#set_syntax(s:syn_with_contained)

let b:current_syntax = 'starlark'
