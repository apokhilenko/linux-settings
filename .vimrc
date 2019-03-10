set shell=zsh
"set the with of tabstop to 4 spaces
set tabstop=4
"make indentation to correnspond to one tab
set shiftwidth=4
"Allow line numbers
set number
"Always display the status line
set laststatus=2
"Don't try to be compatible with Vi
set nocompatible
"Enable pathogen package manager on
execute pathogen#infect()
"Turn syntax highlighting on for programing
syntax on
"Detect file types
filetype plugin indent on
"Use utf-8 Encoding
set encoding=utf-8
"Choose theme for airline
let g:airline_theme='powerlineish'
"Choose icons for airline bar
let g:Powerline_symbols='unicode'
"Choose fonts for airline theme
let g:airline_powerline_fonts = 1
"Enable 256 colors
set t_Co=256

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_warning_symbol = '💩'
"highlight link SyntasticErrorSign SignColumn
"highlight link SyntasticWarningSign SignColumn
"highlight link SyntasticStyleErrorSign SignColumn
"highlight link SyntasticStyleWarningSign SignColumn

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

"Disable airline tagbar for faster opening times
"let g:airline#extensions#tagbar#enabled = 0

let g:jsx_ext_required = 0
"Open Nerdtree automatically when vim starts up opining a directory
"I usually start working by navigating to the folder and typing [vim .]
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'botright term ++rows=15' | wincmd p | ene | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"Build Fuzzy Finder
"Search and autocomplete into subfolders
set path+=**
"Append to existing value of path
"the 2 stars tells vim to search Subdirectorties recursively in the folder vim is running
"Use Tab for auto completion
set wildmenu

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif

colorscheme OceanicNext
"colorscheme solarized8_dark
