" ==================== Auto load for first time uses ====================
let windows_user = "22782"
if(has("win32") || has("win64") || has("win95") || has("win16"))
  if empty(glob('C:\\Users\\'+windows_user+'\\AppData\\Local\\nvim\\autoload\\plug.vim'))
    silent !curl -fLo C:\\Users\\'+windows_user+'\\AppData\\Local\\nvim\\autoload\\plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
else
  if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
  	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
  				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
endif


" ===============编辑器行为===================================
set guifont=Hack_Italic:h12 "设置字体为Hack字体
set t_ut= " 防止vim背景颜色错误
set showmatch " 高亮匹配括号
set matchtime=1
set report=0
set ignorecase
set nocompatible
set noeb
set softtabstop=4
set shiftwidth=4
set nobackup
set autoread
set nocompatible
set nu "设置显示行号
set backspace=2 "能使用backspace回删
syntax on "语法检测
set ruler "显示最后一行的状态
set laststatus=2 "两行状态行+一行命令行
set ts=4
set expandtab
set t_Co=256 "指定配色方案为256
set mouse=a "设置可以在VIM使用鼠标
set selection=exclusive
" set selectmode=mouse,key
set tabstop=4 "设置TAB宽度
set history=1000 "设置历史记录条数
set clipboard+=unnamed " 共享剪切板
set encoding=utf-8
set fileencodings=utf-8,chinese,utf-16,big5,latin1 "Windows自动识别不同的编码


" ===============基础快捷键修改================================
let mapleader=" "
inoremap jj <Esc> " 将jj映射到Esc
nnoremap Q :q<CR> " 退出
nnoremap S :w<CR> " 保存
noremap H 5h " 光标向左移动五个位置
noremap J 5j " 光标向右移动五个位置
noremap K 5k " 光标向上移动五个位置
noremap L 5l " 光标向下移动五个位置


" ================neovim/vim窗口管理===============================
noremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR> " 向下分屏
noremap sj :set splitbelow<CR>:split<CR> " 向上分屏
noremap sl :set nosplitright<CR>:vsplit<CR>:set splitright<CR> " 向左分屏
noremap sh :set splitright<CR>:vsplit<CR> " 向右分屏

" 分屏之间移动
noremap <LEADER>j <C-w>j
noremap <LEADER>k <C-w>k
noremap <LEADER>h <C-w>h
noremap <LEADER>l <C-w>l

" 调节分屏的大小 
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>


" ==================== Tab management(标签管理) ====================
noremap tu :tabe<cr> " 创建新标签
noremap tu :tab split<cr> " 以当前文件创建新标签
" move around tabs with tn and ti
noremap tp :-tabnext<CR> " 移动到上一个标签
noremap tn :+tabnext<CR> " 移动到下一个标签
" Move the tabs with tmn and tmi
noremap tmp :-tabmove<CR> " 当前标签前移
noremap tmn :+tabmove<CR> " 当前标签后移

if(has("win32") || has("win64") || has("win95") || has("win16"))
else
  let g:python3_host_prog = expand('/usr/bin/python3.7')
endif

" ==================== Install Plugins with Vim-Plug ====================
call plug#begin('$HOME/.config/nvim/plugged')
" Plug 'theniceboy/eleline.vim', { 'branch': 'no-scrollbar' }

" vim主题
Plug 'projekt0n/github-nvim-theme'

" VIM对齐插件
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ea <plug>(EasyAlign)

" 缩进指示线
Plug 'Yggdroot/indentLine'

" 代码高亮
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" 自动补全括号
" Plug 'jiangmiao/auto-pairs' " 自动补全括号和引号等
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ea <Plug>(EasyAlign)

" 任务栏美化
" Plug 'vim-airline/vim-airline'

" ==============neovim功能优化===================================="
" Plug 'skywind3000/vim-terminal-help' " neovim内置终端
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc代码补全

" 代码片段插件
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'luochen1990/rainbow' " rainbow

" CMAKE
" Plug 'cdelledonne/vim-cmake'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } " 左侧目录树

" Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons' " VIM目录的图标

"  括号自动补全
Plug 'jiangmiao/auto-pairs'

"  函数定义
Plug 'liuchengxu/vista.vim'

call plug#end()

" 任务栏美化
let g:airline#extensions#tabline#enabled = 1


" 目录树显示/隐藏快捷键
map tt :NERDTree<CR>
map tt :NERDTreeToggle<CR>

" 类大纲查看器
" nmap <F8> :TagbarToggle<CR>

" 启用github-nvim-theme主题
" colorscheme github_dark

set encoding=UTF-8

let g:rainbow_activate=1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

" =================COC配置==========================================
" let g:coc_global_extensions = [
"     
"     \ 'coc-pyright',
"     ]

set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

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
nmap <silent> gd <Plug>(coc-definition)

" ==========Ultisnips代码片段配置================
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrgger="<C-tab>"
if(has("win32") || has("win64") || has("win95") || has("win16"))
   let g:UltiSnipsSnippetDirectories=['C:\\Users\\'+windows_user+'\\AppData\\Local\\nvim\\plugged\\ultisnips\\']
else
  let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/plugged/ultisnips/']
endif