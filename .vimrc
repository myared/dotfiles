"""""
"""" vim configuration
"""""

let mapleader = ","

" set shell=/bin/zsh

set nocompatible  " use vim settings rather than vi settings
set nobackup
set noswapfile    " don't create swp files everywhere
set nowritebackup " i also like to live dangerously
set history=50    " keep 50 lines of history
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" http://vimdoc.sourceforge.net/htmldoc/filetype.html
filetype plugin indent on

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

"""""
""""" personal vim preferences
"""""

" set the colorscheme for vim
"colorscheme github
colorscheme oceandeep

" Color scheme
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Automatically remove trailing whitespace before saving
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd bufwritepre *.js :%s/\s\+$//e
autocmd bufwritepre *.vimrc :%s/\s\+$//e
autocmd bufwritepre *.hbs :%s/\s\+$//e
autocmd bufwritepre *.bundles :%s/\s\+$//e
autocmd bufwritepre *.ex :%s/\s\+$//e
autocmd bufwritepre *.exs :%s/\s\+$//e

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Soft tabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" display line numbers along the left side of a window
" & change the width of the gutter column used for numbering
set number
set numberwidth=5

" Get off my lawn (love the comment)
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

"""""
""""" custom configuration
"""""

" Use Ag instead of Grep when available
if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Ignore folders that I don't want to look into
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" don't just rspec, bundle exec rspec
" let g:turbux_command_rspec  = 'bundle exec rspec'

" Treat <li> and <p> tags like the block tags they are
"let g:html_indent_tags = 'li\|p'

"""""
""""" plugin customization
"""""

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1

" Toggle TagBar for methods
"nmap <Leader>s :TagbarToggle<CR>

"""""
""""" custom commands
"""""

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" open up the dir you're in for editing
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"""""
""""" markdown support
"""""

" Set syntax highlighting for specific file types
au BufRead,BufNewFile *.md set filetype=markdown

" Enable spellchecking for Markdown
au BufRead,BufNewFile *.md setlocal spell

" Automatically wrap at 80 characters for Markdown
au BufRead,BufNewFile *.md setlocal textwidth=80

"""""
""""" git support
"""""

" Automatically wrap at 72 characters and spell check git commit messages
autocmd FileType gitcommit setlocal spell


"""""
""""" ember support
"""""

let g:mustache_abbreviations = 1

"""""
""""" ctags
"""""

" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
"let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Index ctags from any project, including those outside Rails
"map <Leader>ct :!ctags -R .<CR>

"""""
""""" autocommand groups
"""""

augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END

"""""
""""" legacy
"""""

" Snippets are activated by Shift+Tab
"let g:snippetsEmu_key = "<S-Tab>"

" tslime default hotkeys
" vmap <C-c><C-c> <Plug>SendSelectionToTmux
" nmap <C-c><C-c> <Plug>NormalModeSendToTmux
" nmap <C-c>r <Plug>SetTmuxVars

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning

" set wildmode=list:longest,list:full
" set complete=.,w,t
" function! InsertTabWrapper()
"     let col = col('.') - 1
"     if !col || getline('.')[col - 1] !~ '\k'
"         return "\<tab>"
"     else
"         return "\<c-p>"
"     endif
" endfunction
" inoremap <Tab> <c-r>=InsertTabWrapper()<cr>


"""""
""""" load vundle plugins from .vimrc.bundles
"""""

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
