" install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" https://superuser.com/questions/302186/vim-scrolls-very-slowly-when-a-line-is-too-long
" Syntax coloring lines that are too long just slows down the world
set synmaxcol=270
set ttyfast " u got a fast terminal
set lazyredraw " to avoid scrolling problems

" 先创建 .tmp 文件夹，处理一些权限导致的无法在 /tmp 创建文件的问题，有些 vim 插件需要创建临时文件，直接在 /tmp 里创建可能会失败
let $TMPDIR = $HOME."/.tmp"
set bg=dark
set backspace=indent,eol,start
set scrolloff=3
set cursorline
autocmd Filetype gitcommit setlocal spell textwidth=72
set pastetoggle=<F2>
map <F4> :%retab! <CR> :w <CR>
set nu
set ts=4
set sw=4
set expandtab
syntax on
set hls
set incsearch
set cindent
set autoindent
set guifont=Monaco\ 12
set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12
set laststatus=2
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=mM
set fencs=utf-8,gbk

" NOTE: you must create ~/.vim/undo first
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set backupdir=~/.vim/backup


" shortcuts to vimdiff, http://stackoverflow.com/questions/7309707/why-does-git-mergetool-opens-4-windows-in-vimdiff-id-expect-3
let mapleader=','
let g:mapleader=','
let g:maplocalleader=';'


if &diff
    map <leader>1 :diffget LOCAL<CR>
    map <leader>2 :diffget BASE<CR>
    map <leader>3 :diffget REMOTE<CR>
endif

set nocompatible              " be iMproved, required

" https://github.com/junegunn/vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'gregsexton/MatchTag'
Plug 'tpope/tpope-vim-abolish'  "https://github.com/tpope/tpope-vim-abolish 转换骆驼命名法
Plug 'terryma/vim-expand-region'
Plug 'stephpy/vim-yaml'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'ntpeters/vim-better-whitespace'
Plug 'fullybaked/toggle-numbers.vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0ng/vim-hybrid'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'lfv89/vim-interestingwords'    " https://github.com/lfv89/vim-interestingwords
Plug 'tpope/vim-sensible'
Plug 'elzr/vim-json'
Plug 'solarnz/thrift.vim'
Plug 'vim-scripts/BufOnly.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/LargeFile'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'
" 查找文件和搜索的工具
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 安装强大的LSP客户端coc,支持各种语言
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" vim-go是golang的开发插件，项目地址：https://github.com/fatih/vim-go，帮助:help vim-go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'    " 快速移动插件, ',,w'可以在单词上出现前缀，然后快速跳转
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
"..................................
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'    " https://github.com/junegunn/gv.vim git commit browser
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'ascenator/L9', {'name': 'newL9'}
Plug 'farmergreg/vim-lastplace'
call plug#end()

" 模糊搜索，使用z/支持模糊搜索
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

" for nerdtree
" autocmd vimenter * NERDTree
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\~$', '__pycache__'] "ignore files in NERDTree
nnoremap <silent> <LocalLeader>e :<C-u>let NERDTreeWinPos=0 \| NERDTreeToggle<CR>
nnoremap <silent> <LocalLeader>a :<C-u>let NERDTreeWinPos=0 \| NERDTreeFind<CR>
nnoremap <silent> <LocalLeader>E :<C-u>let NERDTreeWinPos=1 \| NERDTreeToggle<CR>
nnoremap <silent> <LocalLeader>A :<C-u>let NERDTreeWinPos=1 \| NERDTreeFind<CR>

" for Tagbarbar, sudo apt-get install ctags
nnoremap <silent> <F8> :TagbarToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0    " sort by sourcefile
let g:tagbar_autopreview = 0
set updatetime=500   " milliseconds update


" for airline, http://vimawesome.com/plugin/vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme = 'wombat'
let g:airline#extensions#tabline#enabled = 1
function! ArilineInit()
    let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
    let g:airline_section_b = airline#section#create_left(['ffenc', 'hunks', '%F'])
    "let g:airline_section_c = airline#section#create(['filetype'])
    let g:airline_section_x = airline#section#create(['%P'])
    let g:airline_section_y = airline#section#create(['%B'])
    let g:airline_section_z = airline#section#create_right(['%l', '%c'])
endfunction
autocmd VimEnter * call ArilineInit()


" 高亮当前选中单词
autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
nnoremap <silent> <F3> :exe "let HlUnderCursor=exists(\"HlUnderCursor\")?HlUnderCursor*-1+1:1"<CR>

" Plug 'plasticboy/vim-markdown'
let g:vim_markdown_conceal = 0


" ctrlp, 在~/.agignore添加一行node_modules
" https://stackoverflow.com/questions/24479101/vim-ctrlp-not-parsing-ag-silver-search-ignore-option-correctly
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|swp|pyc|pyo)$',
  \ }
if executable('ag')
  " Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast, respects .gitignore
  " and .agignore. Ignores hidden files by default.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'
else
  "ctrl+p ignore files in .gitignore
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif


" 指定UltiSnips python的docstring风格, sphinx, google, numpy
let g:ultisnips_python_style = 'sphinx'

" 用ctrl+l可以在insert和command模式都可以保存
inoremap <c-l> <c-o>:w<cr>
nnoremap <c-l> :w<cr>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [n :bnext<CR>
" https://stackoverflow.com/questions/15583346/how-can-i-temporarily-make-the-window-im-working-on-to-be-fullscreen-in-vim
nnoremap tt :tab split<CR>

" 评论配置
let g:NERDTrimTrailingWhitespace = 1
let g:javascript_plugin_jsdoc = 1

"http://vimawesome.com/plugin/rainbow-parentheses-vim   花里胡哨的彩虹括号^_^

let g:indentLine_enabled = 1
let g:indentLine_color_term = 239
let g:LargeFile=1


" for json
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:vim_json_syntax_conceal = 0     " 显示json编辑时候的双引号
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab


" https://github.com/wincent/wincent/blob/bff31c32e427c5913d1eed0b0c1b3da24e8ba8ba/roles/dotfiles/files/.vim/plugin/settings.vim#L38
if has('folding')
  if has('windows')
	set fillchars=vert:┃              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
  endif
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif

if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j                " remove comment leader when joining comment lines
endif

set formatoptions+=n                  " smart auto-indenting inside numbered lists
set guioptions-=T                     " don't show toolbar
set hidden                            " allows you to hide buffers with unsaved changes without being prompted
set laststatus=2                      " always show status line
set lazyredraw                        " don't bother updating screen during macro playback

" http://stackoverflow.com/questions/6488683/how-do-i-change-the-vim-cursor-in-insert-normal-mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" 退出快捷键
inoremap jj <Esc>`^
inoremap hhh <Esc>`^
inoremap kkk <Esc>`^
inoremap lll <Esc>`^
inoremap ooo <Esc>`^o
inoremap <C-k> <Esc>`^
inoremap <leader>w <Esc>:w<cr>
noremap <leader>e :q<cr>
noremap <leader>E :qa!<cr>
noremap <leader>b :bd<cr>
noremap <leader>s :vs<cr>  " vertical split
noremap <leader>r :e!<cr>  " reload without save
noremap <leader>q :qa!<cr>  " quit all window without save
noremap <leader>w :w<cr>

" Window-control prefix
nnoremap  [Window]   <Nop>
nmap      s [Window]

nnoremap <silent> [Window]v  :<C-u>split<CR>
nnoremap <silent> [Window]g  :<C-u>vsplit<CR>

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


" https://github.com/lfv89/vim-interestingwords 高亮感兴趣的 word
nnoremap <silent> <leader>f :call InterestingWords('n')<cr>
nnoremap <silent> <leader>F :call UncolorAllWords()<cr>

" https://github.com/jaxbot/semantic-highlight.vim
"nnoremap <Leader>s :SemanticHighlightToggle<cr>

" 禁止 startify 自动切换目录
let g:startify_change_to_dir = 0


" 用 ,a 搜索当前 cursor 下单词，-w 参数精确匹配单词
if executable('ag')
    noremap <leader>a :Ag! -w "<cword>"<cr>
else
    let g:ack_default_options = " -H --nopager --nocolor --nogroup --column"
    noremap <Leader>a :Ack <cword><cr>
endif


" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Plug 'fullybaked/toggle-numbers.vim'
nmap ,n :LineNumberToggle<cr>

" https://github.com/ianva/vim-youdao-translater settings
vnoremap <silent> <C-Y> :<C-u>Ydv<CR>
nnoremap <silent> <C-Y> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

" add :FormatJSON command, https://coderwall.com/p/faceag/format-json-in-vim
com! FormatJSON %!python3 -c "import json, sys, collections; print(json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), ensure_ascii=False, indent=2))"
com! FormatJSONPy3 %!python3 -m json.tool
com! FormatJSONPy2 %!python -m json.tool
com! FormatJSONPy2Utf8 %!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), ensure_ascii=False, indent=2)"


" for golang https://github.com/fatih/vim-go
" https://github.com/fatih/vim-go-tutorial
let g:go_gopls_enabled = 0
let g:go_code_completion_enabled = 0
let g:go_doc_keywordprg_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_jump_to_error = 0
let g:go_fmt_autosave = 1
let g:go_fmt_fail_silently = 1
let g:go_imports_autosave = 1
let g:go_mod_fmt_autosave = 0
let g:go_snippet_engine = 'ultisnips'
let g:go_textobj_enabled = 1
let g:go_list_height = 10
let g:go_list_autoclose = 0
let g:go_fold_enable = []
let g:go_info_mode = 'gopls'
let g:go_def_mode = 'gopls'
let g:go_referrers_mode = 'gopls'
let g:go_implements_mode = 'guru'
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_highlight_string_spellcheck = 0
let g:go_highlight_variable_declarations = 0
let g:go_highlight_variable_assignments = 0
let g:go_fmt_command = "goimports"
let g:go_def_reuse_buffer = 1
let g:go_auto_type_info = 0
if has('nvim') || exists(':terminal')
  let g:go_term_enabled = 1
  let g:go_term_close_on_exit = 0
endif

" for nerdcommenter.vim
nmap <Leader>v <plug>NERDCommenterToggle
let g:NERDSpaceDelims = 1

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Setting up how to display whitespace characters
set list
set listchars=tab:⇥\ ,trail:·,extends:⋯,precedes:⋯,nbsp:~

" when use diff from cmd line, change color theme
if &diff
    colorscheme evening
else
    colorscheme hybrid
endif
" https://stackoverflow.com/questions/6427650/vim-in-tmux-background-color-changes-when-paging/15095377#15095377
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" for easy-motion
map <Leader><Leader>w <Plug>(easymotion-w)
map <Leader><Leader>f <Plug>(easymotion-f)
map <Leader><Leader>b <Plug>(easymotion-b)
nmap ss <Plug>(easymotion-s2)
nmap sd <Plug>(easymotion-s)
nmap sf <Plug>(easymotion-overwin-f)
map  sh <Plug>(easymotion-linebackward)
map  sl <Plug>(easymotion-lineforward)

" May need for vim (not neovim) since coc.nvim calculate byte offset by count
" utf-8 byte sequence.
set encoding=utf-8
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <Leader>rf <Plug>(coc-refactor)

" Formatting selected code.
nmap <Leader>p  <Plug>(coc-format)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" fzf.vim
nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>f :Buffers <CR>
nnoremap <silent> <c-p> :Files <CR>
