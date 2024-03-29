"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2020 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
let g:srcery_inverse_match_paren = 1
let g:rainbow_active = 1
let g:mix_format_on_save = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:deoplete#enable_at_startup = 1
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:syntastic_vim_checkers = ['vint']
let g:syntastic_markdown_checkers = ['mdl']
let g:syntastic_markdown_mdl_exec = 'markdownlint'
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_go_checkers = ['golangci_lint']
let g:vebugger_path_gdb='rust-gdb'
let g:vebugger_path_python_lldb='rust-lldb'
let g:mkdp_port = '8888'
let g:mkdp_browser = 'firefox'
let g:gruvbox_italic = 1
let g:gruvbox_contrast_light = 'soft'
let g:python3_host_prog = "/usr/local/opt/python@3.9/libexec/bin/python"
let g:neoformat_enabled_java = ['googlefmt']
let g:neoformat_enabled_scala = ['scalafmt']
vnoremap <F5> :CarbonNowSh<CR>
nnoremap <Space>gl :Twiggy<CR>
let g:carbon_now_sh_options =
\ { 'ln': 'true',
  \ 'fm': 'Fira Code',
  \ 't': 'oceanic-next' }
let g:github_dashboard = { 'username': $GITHUB_USER, 'password': $GITHUB_TOKEN }
let g:github_access_token = $GITHUB_TOKEN

" Show all diagnostics
" nnoremap <silent> <space>lca  :<C-u>CocList diagnostics<cr>
" Find symbol of current document
nnoremap <silent> <space>lco  :<C-u>CocList outline<CR>
" Search workspace symbols
nnoremap <silent> <space>lcs  :<C-u>CocList -I symbols<CR>
" Do default action for next item.
nnoremap <silent> <space>lcj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>lck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>lcp  :<C-u>CocListResume<CR>
nnoremap <silent> <space>k    :<Plug>(clever-f-reset)<CR>

" Toggle panel with Tree Views
nnoremap <silent> <space>lct :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsPackages'
nnoremap <silent> <space>lca :<C-u>CocCommand metals.tvp metalsPackages<CR>
" Toggle Tree View 'metalsCompile'
nnoremap <silent> <space>lcc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Toggle Tree View 'metalsBuild'
nnoremap <silent> <space>lcb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Reveal current current class (trait or object) in Tree View 'metalsPackages'
nnoremap <silent> <space>lcf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>
nnoremap <silent> ge :<C-u>CocCommand metals.go-to-super-method<CR>
" lua require('spacevim').bootstrap()
let g:airline_theme='base16_harmonic_dark'
let g:airline_section_c = '%t'
let g:airline#extensions#tmuxline#enabled = 0
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

nnoremap <silent> <space>bd :Bdelete<CR>
