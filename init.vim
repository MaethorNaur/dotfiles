"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2019 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'
let g:rainbow_active = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_elixir_checker = 1
let g:deoplete#enable_at_startup = 1
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:syntastic_vim_checkers = ['vint']
let g:syntastic_markdown_checkers = ['mdl']
let g:syntastic_markdown_mdl_exec = 'markdownlint'
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_go_checkers = ['golangci_lint']
let g:syntastic_markdown_mdl_args = '-c ~/.config/efm-langserver/markdownlint.yml'
let g:vebugger_path_gdb='rust-gdb'
let g:vebugger_path_python_lldb='rust-lldb'
let g:mkdp_port = '8888'
let g:mkdp_browser = 'firefox'
let g:spacevim_layer_lang_java_formatter = '~/.SpaceVim/google-java-format-1.7-all-deps.jar'
let g:neoformat_enabled_java = ['googlefmt']
let g:neoformat_enabled_scala = ['scalafmt']
let g:neoformat_java_googlefmt = {
        \ 'exe': 'java',
        \ 'args': ['-jar', get(g:,'spacevim_layer_lang_java_formatter', ''), '-'],
        \ 'stdin': 1,
\ }
vnoremap <F5> :CarbonNowSh<CR>
nnoremap <Space>gl :Twiggy<CR>
let g:carbon_now_sh_options =
\ { 'ln': 'true',
  \ 'fm': 'Fira Code',
  \ 't': 'oceanic-next' }

" Some of these key choices were arbitrary;
" it's just an example.
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>
let g:github_dashboard = { 'username': $GITHUB_USER, 'password': $GITHUB_TOKEN }
let g:github_access_token = $GITHUB_TOKEN
let g:gitlab_api_keys = {'gitlab.com': $GITLAB_TOKEN}
" Show all diagnostics
" nnoremap <silent> <space>lca  :<C-u>CocList diagnostics<cr>
" Find symbol of current document
nnoremap <silent> <space>lco  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>lcs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>lcj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>lck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>lcp  :<C-u>CocListResume<CR>

let g:airline_section_c = '%t'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#bookmark#enabled = 0

call SpaceVim#layers#disable('core#statusline')
call SpaceVim#layers#disable('core#tabline')

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

nnoremap <silent> <space>bd :bd<CR>


" lua require('spacevim').bootstrap()
