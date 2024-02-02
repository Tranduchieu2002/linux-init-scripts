"" Error handling for loading NeoSolarized
"Plug 'overcache/NeoSolarized'
"
  "let g:NeoSolarized = {}
  "let g:ok_status = 0
  "silent! execute 'lua require("NeoSolarized")'
  "let g:ok_status = 1
"
"" Default Setting for NeoSolarized
""if !empty(g:NeoSolarized) && has_key(g:NeoSolarized, 'setup')
  ""call g:NeoSolarized.setup({
        ""\ 'style': 'dark',          " "dark" or "light"
        ""\ 'transparent': v:true,   " true/false; Enable this to disable setting the background color
        ""\ 'terminal_colors': v:true, " Configure the colors used when opening a `:terminal` in Neovim
        ""\ 'enable_italics': v:true,  " Italics for different hightlight groups
        ""\ 'styles': {
        ""\   'comments': {'italic': v:true},
        ""\   'keywords': {'italic': v:true},
        ""\   'functions': {'bold': v:true},
        ""\   'variables': {},
        ""\   'string': {'italic': v:true},
        ""\   'underline': v:true,     " true/false; for global underline
        ""\   'undercurl': v:true,     " true/false; for global undercurl
        ""\ },
        ""\ 'on_highlights': function('s:on_highlights')
        ""\ })
"
  ""function! s:on_highlights(highlights, colors)
    """ Do something with the highlights and colors
  ""endfunction
""endif
"
"" Set colorscheme to NeoSolarized or default
""try
  ""colorscheme NeoSolarized
""catch /^Vim\%((\a\+)\)\=:E18o
  ""colorscheme default
  ""set background=dark
""endtry
Plug 'navarasu/onedark.nvim'
