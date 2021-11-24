" NOTE: Tag on the left, filetype on the right
let g:taggedtemplate#tagSyntaxMap = {
  \ "html": "html",
  \ "md":   "markdown",
  \ "css":  "css",
  \ }

autocmd FileType javascript,javascript.jsx,typescript : call taggedtemplate#applySyntaxMap()
