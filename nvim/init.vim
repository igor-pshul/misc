set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set signcolumn=yes
set smartindent
set nu
set relativenumber
set hidden
set scrolloff=8
set nohlsearch

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-compe'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ThePrimeagen/vim-be-good'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

nnoremap ö :NERDTreeToggle<CR>
nnoremap Ö <cmd>Telescope buffers<cr>

nnoremap dö di{
nnoremap dÖ da{
nnoremap dä di(
nnoremap dÄ da(
nnoremap dü di[
nnoremap dÜ da[

nnoremap cö ci{
nnoremap cÖ ca{
nnoremap cä ci(
nnoremap cÄ ca(
nnoremap cü ci[
nnoremap cÜ ca[

nnoremap yö yi{
nnoremap yÖ ya{
nnoremap yä yi(
nnoremap yÄ ya(
nnoremap yü yi[
nnoremap yÜ ya[

vnoremap ö i}
vnoremap Ö a}
vnoremap Ä a)
vnoremap ä i)
vnoremap ü i]
vnoremap Ü a]
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Trigger a highlight in the appropriate direction when pressing these keys:

colorscheme palenight
hi Normal guibg=NONE ctermbg=NONE
lua << EOF
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)
EOF
