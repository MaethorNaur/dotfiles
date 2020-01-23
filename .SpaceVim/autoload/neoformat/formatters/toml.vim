function! neoformat#formatters#toml#enabled() abort
    return ['tomlfmt']
endfunction

function! neoformat#formatters#toml#tomlfmt() abort
    return {
            \ 'exe': 'toml-fmt',
            \ 'stdin': 1,
            \ }
endfunction
