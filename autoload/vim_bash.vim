let s:bufnr = -1
let s:term_size = get(g:, 'vim_bash_term_size', 80)
function! vim_bash#run() abort
  let l:run_win_nr = bufwinnr(s:bufnr)
  if l:run_win_nr != -1
    silent! execute l:run_win_nr .. 'wincmd c'
  endif

  let l:cmd = [ 'bash', expand('%')]
  let l:opts = { 
  \ 'term_cols': s:term_size,
  \ 'vertical': v:true,
  \ 'norestore': v:true,
  \ 'term_kill': 'kill',
  \  }
  let s:bufnr = term_start(l:cmd, l:opts)
  silent! execute('wincmd p')
endfunction

