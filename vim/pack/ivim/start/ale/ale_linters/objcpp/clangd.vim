" Author: Andrey Melentyev <andrey.melentyev@protonmail.com>
" Description: Clangd language server

call ale#Set('objcpp_clangd_executable', 'clangd')
call ale#Set('objcpp_clangd_options', '')

function! ale_linters#objcpp#clangd#GetCommand(buffer) abort
    return '%e' . ale#Pad(ale#Var(a:buffer, 'objcpp_clangd_options'))
endfunction

call ale#linter#Define('objcpp', {
\   'name': 'clangd',
\   'lsp': 'stdio',
\   'executable': {b -> ale#Var(b, 'objcpp_clangd_executable')},
\   'command': function('ale_linters#objcpp#clangd#GetCommand'),
\   'project_root': function('ale#c#FindProjectRoot'),
\})
