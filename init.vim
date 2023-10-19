set number
set encoding=UTF-8
set tabstop=2
set shiftwidth=2
set autoindent
set smarttab

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

call plug#begin()
  Plug 'preservim/nerdtree' |
	\ Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 's1n7ax/nvim-terminal'
  Plug 'skywind3000/vim-terminal-help'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jparise/vim-graphql'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = [
    \ 'coc-tsserver'
    \ ]
  Plug 'smoka7/multicursors.nvim'
	Plug 'prettier/vim-prettier', {
  	\ 'do': 'npm install --frozen-lockfile --production',
  	\ 'for': ['javascript', 'typescript', 'typescriptreact', 'javascriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

	Plug 'bmatcuk/stylelint-lsp'
call plug#end()

augroup JsonToJsonc
    autocmd! FileType json set filetype=jsonc
augroup END

nnoremap <c-w> :q<cr>
nnoremap <c-s> :w<cr>
nnoremap <c-b> :NERDTreeToggle<cr>
nnoremap <c-r> <c-r>
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <c-f> :Rg<CR>
inoremap <silent><expr> <c-space> coc#refresh()

nmap <A-Up> :m +1<CR>
nmap <A-Down> :m -2<CR>

