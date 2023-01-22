let g:ale_linters = {
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'tsserver', 'prettier'],
\   'html': [],
\   'json': [],
\  }

let g:ale_linter_aliases = {
\   'typescript.tsx': 'typescript',
\   'typescriptreact': 'typescript',
\  }

let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'css': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'typescriptreact': ['eslint', 'prettier'],
\   'typescript.tsx': ['eslint', 'prettier'],
\   'json': [],
\   }

nmap <leader>d <Plug>(ale_fix)

" Use a slightly slimmer error pointer
let g:ale_sign_error = '✖'
hi ALEErrorSign guifg=#DF8C8C
let g:ale_sign_warning = '⚠'
hi ALEWarningSign guifg=#F2C38F

let g:ale_fix_on_save = 1

" Use CTRL-k and CTRL-j to navigate errors
nmap <C-k> <Plug>(ale_previous_wrap)
nmap <C-j> <Plug>(ale_next_wrap)
