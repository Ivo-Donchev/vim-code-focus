" -------------------
" Add to path
" -------------------
python3 import sys
python3 import vim
python3 sys.path.append(vim.eval('expand("<sfile>:p:h")'))

" -------------------
"  Functions
" -------------------

function! _CodeFocus()
python3 << endOfPython
from src.main import code_focus

file_obj = vim.current.buffer
goto_definition(file_obj=file_obj
endOfPython
endfunction

command! CodeFocus call _CodeFocus()
