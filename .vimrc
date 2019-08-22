call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'
Plug 'rakr/vim-two-firewatch'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'challenger-deep-theme/vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'edkolev/tmuxline.vim'
Plug 'joshdick/onedark.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'hzchirs/vim-material'
Plug 'connorholyday/vim-snazzy'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'mhartington/oceanic-next'
Plug 'Raimondi/delimitMate'
Plug 'dense-analysis/ale'
Plug 'mxw/vim-jsx'
Plug 'Shougo/deoplete.nvim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'
Plug 'HerringtonDarkholme/yats.vim'
call plug#end()
filetype plugin indent on
set rtp+=/usr/local/opt/fzf
filetype on

set guifont=*
set ignorecase
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab
set splitright
set splitbelow
set nornu
set nu
set clipboard=unnamedplus " yank to clipboard

set autoindent
set smartindent

set ruler
set nolist
set listchars=eol:¬,tab:!·,trail:·

set wildmenu
set lazyredraw
set wildignore+=node_modules/**

set hlsearch
set showmatch
let g:loaded_matchparen=1

set mouse=a

let g:ale_warn_about_trailing_blank_lines = 1
" let g:syntastic_python_checkers = ['pylama']

hi Comment gui=italic cterm=italic
hi htmlArg gui=italic cterm=italic

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
nnoremap <Leader><Leader> :e#<CR>
nmap <Leader>l :Limelight<CR>
xmap <Leader>l :Limelight<CR>

" Cycle through buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

map <C-n> :NERDTreeToggle<CR>
nmap ; :Buffers<CR>
nnoremap <C-g> :GitFiles?<CR>
nnoremap <C-p> :GitFiles<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

" Vim splits without c-w
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

map <Leader> <Plug>(easymotion-prefix)

:map! <A-LEFT> <S-LEFT>
:map <A-LEFT> <S-LEFT>
:map! <A-RIGHT> <S-RIGHT>
:map <A-RIGHT> <S-RIGHT>

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '',
      \'c'    : '',
      \'win'  : '#W',
      \'cwin' : '#W',
      \'x'    : '',
      \'y'    : ['%R', 'Not Some Tofu'],
     \'z'    : ''}

let g:airline#extensions#tmuxline#enabled = 0
let g:ag_working_path_mode="r"

" For Python - enable all Python syntax highlighting features
let python_highlight_all = 1
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

" Flow
let g:flow#autoclose = 1
let g:flow#enable = 0
let g:flow#showquickfix = 0

" JSX/React
let g:jsx_ext_required = 1 " Allow JSX in normal JS files

" Linters
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:syntastic_javascript_checkers = ['eslint', 'tslint']
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let b:ale_linters = ['eslint', 'flow-language-server']
let g:ale_linters = {
\   'javascript': ['eslint', 'flow-language-server'],
\}

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"Type script configuration
let g:typescript_indent_disable = 1

" %linter% is the name of the linter that provided the message
" " %s is the error or warning message
" let g:ale_echo_msg_format = '%linter% says %s'

" Auto remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
syntax on

" AIRLINE THEMES
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='material'

" Limelight
let g:limelight_default_coefficient=0.8
let g:goyo_width=150

" if (has("autocmd"))
"   augroup colorextend
"     autocmd!
"     " Make `Function`s bold in GUI mode
"     autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
"   augroup END
" endif

syntax enable
" Only valid for themes with light mode
set background=dark

" Enable italics for themes
let g:onedark_terminal_italics=1
let g:gruvbox_italic=1
let g:two_firewatch_italics=1
let g:dracula_italic=1
let g:dracula_bold=1
let g:enable_bold_font = 1
let g:one_allow_italics = 1 " I love italic for comments
let g:enable_italic_font = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:material_style='oceanic'
" Theme specific
let g:gruvbox_contrast_light='hard'
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'allow_italic': 1
  \     }
  \   }
  \ }

" SET_COLORSCHEME
colorscheme vim-material

"PRETTIER let g:ale_javascript_prettier_use_local_config = 1

" Set at bottom to override default from color schemes
" hi Normal ctermbg=NONE guibg=NONE
" hi NonText ctermbg=NONE
highlight clear SignColumn
highlight clear CursorLineNR

if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif
let g:ackprg = 'ag --nogroup --nocolor --column'

set secure

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif



" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false

" " print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" Prettier default: none
let g:prettier#config#trailing_comma = 'none'

let g:prettier#config#print_width = 120

let g:prettier#config#parser = 'typescript'

let g:ale_typescript_tslint_executable = 'tslint'

let g:limelight_conceal_ctermfg = 'red'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

