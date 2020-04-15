"                                                                             .-----.
"                                                                            /7  .  (
"                                                                           /   .-.  \
"                                                                          /   /   \  \
"                                                                         / `  )   (   )
"                                                                        / `   )   ).  \
"                                                                      .'  _.   \_/  . |
"      Harmos'                                        .--.           .' _.' )`.        |
"                      .                             (    `---...._.'   `---.'_)    ..  \
"      ##############..... ##############             \            `----....___    `. \  |
"      ##############......##############              `.           _ ----- _   `._  )/  |
"        ##########..........##########                  `.       /"  \   /"  \`.  `._   |
"        ##########........##########                      `.    ((O)` ) ((O)` ) `.   `._\
"        ##########.......##########                         `-- '`---'   `---' )  `.    `-.
"        ##########.....##########..                            /                  ` \      `-.
"        ##########....##########.....                        .'                      `.       `.
"      ..##########..##########.........                     /                     `  ` `.       `-.
"    ....##########.#########.............            .--.   \ ===._____.======. `    `   `. .___.--`     .''''.
"      ..################JJJ............             ' .` `-. `.                )`. `   ` ` \          .' . '  8)
"        ################.............              (8  .  ` `-.`.               ( .  ` `  .`\      .'  '    ' /
"        ##############.JJJ.JJJJJJJJJJ               \  `. `    `-.               ) ` .   ` ` \  .'   ' .  '  /
"        ############...JJ...JJ..JJ  JJ               \ ` `.  ` . \`.    .--.     |  ` ) `   .``/   '  // .  /
"        ##########....JJ...JJ..JJ  JJ                 `.  ``. .   \ \   .-- `.  (  ` /_   ` . / ' .  '/   .'
"        ########......JJJ..JJJ JJJ JJJ                  `. ` \  `  \ \  '-.   `-'  .'  `-.  `   .  .'/  .'
"        ######    .........                               \ `.`.  ` \ \    ) /`._.`       `.  ` .  .'  /
"                    .....                           LGB    |  `.`. . \ \  (.'               `.   .'  .'
"                      .                                 __/  .. \ \ ` ) \                     \.' .. \__
"                                                 .-._.-'     '"  ) .-'   `.                   (  '"     `-._.--.
"                                                (_________.-====' / .' /\_)`--..__________..-- `====-. _________)
"                                                                 (.'(.'

"Plugin manager Vim Plug

" {{{ Plugins
call plug#begin('~/.config/nvim/plugins')

  Plug 'scrooloose/nerdcommenter'
  Plug 'rakr/vim-one'
  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-surround'
  Plug 'alvan/vim-closetag'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim',
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  "Plug 'itchyny/lightline.vim',
  Plug 'sheerun/vim-polyglot'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tbastos/vim-lua'
  Plug 'rust-lang/rust.vim', { 'for': ['rust'] }
  Plug 'Townk/vim-autoclose'
  Plug 'PotatoesMaster/i3-vim-syntax'
  Plug 'terryma/vim-multiple-cursors'
  "Plug 'arakashic/chromatica.nvim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'rhysd/vim-clang-format', { 'for': ['c', 'cpp'] }
  Plug 'vim-scripts/DoxygenToolkit.vim', { 'for': ['c', 'cpp', 'python'] }

  " function! DoRemote(arg)
    " UpdateRemotePlugins
  " endfunction

call plug#end()

" }}}

" Supr preview window
set completeopt-=preview

" {{{ colorscheme/style options
syntax enable
set termguicolors  " Enables truecolor in neovim >= 0.1.5
set novisualbell
set errorbells
set scrolloff=10   " Show 10 extra lines when scrolling up/down
set showbreak=-

colorscheme one
let g:one_allow_italics = 1 " make comments italics

set bg=dark

hi Normal guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE
" }}}

" {{{ Misc UI settings
set encoding=utf-8
scriptencoding utf-8

" Enable mouse in console mode
set mouse=a

" Be a bit faster when executing command-line shell stuff
set noshelltemp

" Deactivate the PRESS ENTER OR TYPE COMMAND TO CONTINUE message
set shortmess=atI

" Allows copy-pasting from other apps
set clipboard=unnamedplus

" Add some space around the cursor when moving it near the borders of the screen
set sidescrolloff=1

" }}}

" {{{ nerdcommenter options
let g:NERDSpaceDelims = 1
" }}}

" {{{ airline options

let g:airline_theme = 'onedark'
let g:airline_powerline_fonts = 1

" }}}

" {{{ vim-closetag options
let g:closetag_filenames = "*.html,*.html.erb"
" }}}

" {{{ Key Settings

let g:mapleader=","              " set the <leader> key to comma

" Map ESC to jk
imap jk <ESC>
imap Jk <ESC>
imap JK <ESC>

" Toggle Wrapping
nnoremap <leader>n :set wrap!<CR>
" Toggle line number
nnoremap <leader><CR> :set number!<CR>


" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap J gj
nnoremap k gk
nnoremap K gk

" Capslock H and L are just stupid LOL
nnoremap H h
nnoremap L l

" Do not exit visual mode when shifting
vnoremap < <gv
vnoremap > >gv

" insert a new line between new line
nnoremap <leader>o O<ESC>o

" comma q quits and saves, comma w saves without warnings
nmap <leader>q :q!<CR>
nmap <leader>w :w!<CR>

" shift key fixes
cmap WQ wq
cmap wQ wq

" place semicolon at the end of a line
nnoremap <leader>; A;<ESC>
inoremap <leader>; <ESC>A;

" Split buffer vertically or horizontally: leader v, leader h
nnoremap <C-c>v <C-w>v
nnoremap <C-c>h <C-w>s
set splitbelow splitright

" Move between splits with leader-direction instead of c-w direction
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" Deleting without overriding the default clipboard
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" remap space bar to search
:nnoremap <Space> /\v

" Makes search using regexes require less \s
:nnoremap <leader>s :%s/\v

" deactivate 'Entering Ex mode' prompt
:nnoremap Q <Nop>

" clang format
nnoremap <leader>f :ClangFormat<CR>

" }}}

" {{{ Folding settings
set foldmethod=syntax " Use syntax fold
set foldlevel=99      " Folds are open by default
set foldlevelstart=99 " Folds are open by default (new way)
let ruby_fold=0
let go_fold=0
let lua_fold=1
let javascript_fold=1
" }}}

" {{{ Whitespace settings
set nowrap                          " don't wrap lines
set wrap linebreak nolist           " when lines are wrapped do a word wrapping
set tabstop=4                    " a tab is two spaces
set shiftwidth=4                    " an autoindent (with <<) is two spaces
set expandtab                       " use spaces, not tabs
set backspace=indent,eol,start      " backspace through everything in insert mode
set list                    " Show invisible characters using listchars
set listchars=""            " Reset the listchars
set listchars=tab:›\        " show tabs as lsaquos
set listchars+=trail:·      " show trailing spaces as dots
set listchars+=nbsp:·       " show trailing non-breaking-spaces as dots
set listchars+=extends:❯    " The character in the last column when the line continues right
set listchars+=precedes:❮   " The character in the first column when the line continues left
" }}}

" {{{ Search settings
set hlsearch    " highlight matches
set incsearch   " incremental searching
set inccommand= " incremental everything
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set gdefault    " by default, replace globally (you can ommit /g at the end of a search-and-replace
" }}}

" {{{ Wildmenu settings
set wildmenu wildmode=longest:full
set wildignorecase
" Ignore these files when auto-completing with tab (for example when opening with :e)
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem          " general programming
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz                      " compressed files
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/* " vendor and sass
set wildignore+=*/node_modules/*
set wildignore+=*.swp,*~,._*
" }}}

" {{{ Matching closing character settings
set showmatch     " Display matching parent
set matchtime=4   " Time to display matching parent, in tens of second
" }}}

" {{{ Grep settings
if executable("ag")
  set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
  set grepformat=%f:%l:%c:%m
endif

" The :G command is like :grep, but silent, and opens the quickfix window
" instead of the first matching result
command! -nargs=+ G execute 'silent grep! <args>' | copen 42 | redraw!

" Auto-adjust the quickfix window height
au FileType qf call AdjustWindowHeight(3, 10)
 function! AdjustWindowHeight(minheight, maxheight)
     let l = 1
     let n_lines = 0
     let w_width = winwidth(0)
     while l <= line('$')
         " number to float for division
         let l_len = strlen(getline(l)) + 0.0
         let line_width = l_len/w_width
         let n_lines += float2nr(ceil(line_width))
         let l += 1
     endw
     exe max([min([n_lines, a:maxheight]), a:minheight]) . "wincmd _"
 endfunction
" }}}

" {{{ Epitech Header

" Configure header guard
function HeaderGuard(filename)
    let define = join(split(toupper(expand(a:filename)), '\.'), '_') . "_"
    call append(line('$'),[
                \"#ifndef " . define,
                \"#define " . define,
                \"","","",
                \"#endif"])
    execute "normal! jjjj"
endfunction

" Configure epitech header
function! WriteEpitechHeader()
    let projectName = input("Project Name : ")
    let fileDescription = input("File description : ")
    let extension = expand('%:e')
    let isHeader = extension == "hpp" || extension == "h" || extension == "hh"
    if &filetype == "make"
        call append(line(0), ["##", "## EPITECH PROJECT, 2020",
                    \"## " . projectName, "## File description:",
                    \"## " . fileDescription, "##"])
    else
        call append(line(0), ["/*", "** EPITECH PROJECT, 2020",
                    \"** " . projectName, "** File description:",
                    \"** " . fileDescription, "*/"])
    endif
    if isHeader
        call HeaderGuard(expand("%:t"))
    endif
endfunction

command! Eph :call WriteEpitechHeader()
command! EpitechHeader :call WriteHeader()

" }}}

" {{{ Undo settings
set undofile                     " Save undo's after file closes
set undolevels=1000              " How many undos
set undoreload=10000             " number of lines to save for undo
set undodir=~/.config/nvim/_undo         " where to save undo histories
set backupdir=~/.config/nvim/_backup/    " where to put backup files.
set directory=~/.config/nvim/_swap/      " where to put swap files.
" }}}

" {{{ Autocommands
if has("autocmd")
  filetype plugin indent on           " allow for individual indentations per file type

  augroup WhiteSpace
    autocmd!

    " before writing a buffer, remove trailing spaces (respecting cursor position) when saving files
    autocmd BufWritePre * kz|:%s/\s\+$//e|'z
  augroup end

  augroup Cursor
    autocmd!

    " After opening, jump to last known cursor position unless it's invalid or in an event handler
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

    " When entering a window, activate cursorline
    autocmd WinEnter * setlocal nocursorline

    " When leaving a window, deactivate cursorline
    autocmd WinLeave * setlocal nocursorline
  augroup end

  augroup Golang
    autocmd!

    " Use tabs, and make them 4-spaces long
    autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4
    " reformat the file before each save
    autocmd FileType go autocmd BufWritePre <buffer> Fmt
  augroup end

  augroup Markdown
    autocmd!

    " Enable spell checking for markdown files
    autocmd BufRead *.md setlocal spell
    autocmd BufRead *.markdown setlocal spell
  augroup end

  augroup Mkdir
    autocmd!

    " before writing a buffer, if the current directory does not exist, create it
    autocmd BufWritePre *
      \ if !isdirectory(expand("<afile>:p:h")) |
      \   call mkdir(expand("<afile>:p:h"), "p") |
      \ endif
  augroup end

endif
" }}}

let g:AutoClosePreserveDotReg = 0
" {{{ Coc config

" Use tab instead of the default  mapping
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" ctrl + space for force activate coc
inoremap <silent><expr> <c-space> coc#refresh()
" }}}

" {{{ FZF config
set rtp+=/usr/local/opt/fzf

" Show FZF when pressing ctrl-p
noremap <c-p> :FZF<CR>
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
" }}}

" {{{ Vim-surround-related stuff

nnoremap <leader>' cs"'
nnoremap <leader>" cs'"

" }}}
