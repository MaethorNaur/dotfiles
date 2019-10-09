"=============================================================================
" vimrc --- Entry file for vim
" Copyright (c) 2016-2017 Shidong Wang & Contributors
" Author: Shidong Wang < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

" Note: Skip initialization for vim-tiny or vim-small.
if 1
    execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'
endif
let g:rainbow_active = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
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
let g:syntastic_scala_checkers=['ensime']
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
" vim:set et sw=2
