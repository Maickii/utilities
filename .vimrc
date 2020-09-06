set ignorecase
set smartcase
setlocal noautoindent
setlocal nocindent
setlocal nosmartindent
setlocal indentexpr=
set clipboard^=unnamed,unnamedplus
"https://stackoverflow.com/questions/9721732/mapping-shift-arrows-to-selecting-characters-lines
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
map <C-v> pi
imap <C-v> <Esc>pi
imap <C-z> <Esc>ui


"http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv


vmap <BS> <Del>
set mouse=a
highlight Visual ctermbg=DarkBlue ctermfg=LightYellow

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

nmap <F1> :wq<CR>
imap <F1> <esc>:wq<CR>
nmap <F2> :q!<CR>
imap <F2> <esc>:q!<CR>

nmap <F5> :wa<CR>:terminal ./run<CR>
imap <F5> <Esc>:wa<CR>:terminal ./run<CR>
nmap <F8> :wa<CR>:terminal ./run2<CR>
imap <F8> <Esc>:wa<CR>:terminal ./run2<CR>



" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
"set expandtab

"I have no wtf is going on with python
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab!

"https://stackoverflow.com/questions/6453595/prevent-vim-from-clearing-the-clipboard-on-exit
autocmd VimLeave * call system("xsel -ib", getreg('+'))


"https://askubuntu.com/questions/292/how-do-i-get-vim-to-keep-its-undo-history
" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=~/.vimundo/

"https://andrew.stwrt.ca/posts/project-specific-vimrc/
set exrc
set secure

"https://stackoverflow.com/a/22614431
set splitright

"https://vim.fandom.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"https://github.com/itchyny/lightline.vim#introduction
set laststatus=2
set noshowmode

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline#extensions#tabline#enabled = 1
let g:gitgutter_enabled = 1
set updatetime=200

let g:airline_powerline_fonts = 1
"let g:gitgutter_set_sign_backgrounds = 1

highlight GitGutterDelete ctermbg=darkred ctermfg=black
highlight GitGutterAdd ctermbg=green ctermfg=black
highlight GitGutterChange ctermbg=darkyellow ctermfg=black
