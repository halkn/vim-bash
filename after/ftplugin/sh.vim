if exists('b:vim_bash_loaded')
  finish
endif
let b:vim_bash_loaded = 1

nnoremap <silent><buffer> <Plug>(vim-bash-run) <cmd>call vim_bash#run()<CR>

if !get(g:, 'vim_bash_disable_default_mapping', 0)
  nmap <buffer> <LocalLeader>r <Plug>(vim-bash-run)
endif

let b:vsnip_snippet_dir = substitute(expand('<sfile>'), '/after/ftplugin/sh.vim', '/snippets', "")

let b:undo_ftplugin =
\ get(b:, 'undo_ftplugin', '')
\ .. '| nunmap <buffer> <LocalLeader>r'
\ .. '| let b:vsnip_snippet_dir = "" '
let b:undo_ftplugin = substitute(b:undo_ftplugin, '^| ', '', '')
