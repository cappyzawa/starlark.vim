if exists('b:current_syntax')
  finish
endif


call starlark#set_syntax()

let b:current_syntax = 'starlark'
