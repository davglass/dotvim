"set gfn=Monaco:h10
"set macatsui enc=utf-8 gfn=Monaco:h13
set lines=55
set columns=110

autocmd VimEnter * set fen
autocmd VimEnter * set fdm=marker
autocmd VimEnter * set foldclose=all
autocmd VimEnter * set fdls=-1
autocmd VimEnter * echo "Hello Dav :)"

let php_sql_query=1
let php_htmlInStrings=1

":map <C-V> "+gP
":map <C-C> "+y
":map <C-X> "+x
":map! <C-v> <C-R>+
