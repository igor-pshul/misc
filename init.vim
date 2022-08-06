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
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
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

colorscheme palenight
hi Normal guibg=NONE ctermbg=NONE
lua require'lspconfig'.tsserver.setup{}
