# vim-bash

`vim-bash` is filetype plugin for bash. 
Only works with the latest version of vim8.

## Features

* Run for current buffer in terminal with function `term_start()`
  * Currently, only vertical split is supported.
* Contain snippets for [vim-vsnip][3]

## Concept

* Recommended to use with the following plugins
  * [vim-lsp][1]
  * [bash-language-server][2]
* out-of-the-box

## Usage

Works without settings.
Provides default mapping for `<Plug>(vim-bash-run)` to `<LocalLeader>r` in bash filetype.

If you want to apply your own mapping, please do as follows.

```vim
let g:vim_bash_disable_default_mapping = 1
augroup vim_bash
  au!
  autocmd FileType sh nmap <silent><buffer> mr <Plug>(vim-bash-run)
augroup END
```

## Settings

| key                                  | Description                               | default |
|--------------------------------------|-------------------------------------------|---------|
| `g:vim_bash_term_size`               | Number of output-buffer zize              | 80      |
| `g:vim_bash_disable_default_mapping` | Set to `1` to disable the default mapping | 0       |

## License

[MIT](LICENSE)

[1]: https://github.com/hrsh7th/vim-vsnip
[2]: https://github.com/prabirshrestha/vim-lsp
[3]: https://github.com/bash-lsp/bash-language-server
