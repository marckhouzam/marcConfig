" this is a comment

if has("terminfo")
  set t_Co=16
  set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
  set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
else
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

let myfiletypefile = "~/.vim/myfiletypes.vim"

syntax on "To use color for syntax

" colors for syntax =======================
highlight LineNr term=none ctermbg=none ctermfg=yellow
highlight Search ctermbg=none ctermfg=white ctermbg=darkblue
"highlight cComment term=None ctermfg=darkblue
highlight String term=None ctermfg=None
highlight Comment term=None ctermfg=cyan
" ======================================

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set ruler
set mouse=a
set mouse=v "To be able to move the cursor with the mouse by pressing v first
" highlight all instances of the requested search.  Use macro below (nohlsearch) to turn off until next search


set tags=${HOME}/tags "Location of the tag file 

set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set cindent

set tabstop=4 "size of tabs 
set expandtab "tabs should become spaces

set sw=4 "shiftwidth

" C options
set nocp

set incsearch "Jump to the search word as typing is done
set formatoptions=tcqr
set ai
set scs " Smartcase
set sm  " Show match
set ignorecase
set number 
set list
set listchars=tab:>.
"set report=1

set hlsearch

" Path to all MGwSim code that contains .h or .cc files
"set path=/vobs/mgwsim/prod/common_swb/common_if/inc,/vobs/mgwsim/prod/common_swb/common_swu/src,/vobs/mgwsim/prod/dist_swb/dist_if/inc,/vobs/mgwsim/prod/dist_swb/dist_swu/src,/vobs/mgwsim/prod/dist_swb/dist_swu/tb,/vobs/mgwsim/prod/gcp_swb/gcp_swu/src,/vobs/mgwsim/prod/gcp_swb/tb/benchmark_swu/src,/vobs/mgwsim/prod/gcp_swb/tb/unix/bench,/vobs/mgwsim/prod/gcp_swb/wrp_swu/src,/vobs/mgwsim/prod/log_swb/common_swu/src,/vobs/mgwsim/prod/log_swb/evl_swu/src,/vobs/mgwsim/prod/lost+found,/vobs/mgwsim/prod/mgr_swb/mgr_swu/src,/vobs/mgwsim/prod/mgr_swb/sql_if/inc,/vobs/mgwsim/prod/mgr_swb/sql_swu/src,/vobs/mgwsim/prod/mgr_swb/sql_swu/tb/sqltb_swu/src,/vobs/mgwsim/prod/mgwsim_if/inc,/vobs/mgwsim/prod/tb/misc/timer/timer_swu/src,/vobs/mgwsim/prod/tb/mscsim/gcpencoder,/vobs/mgwsim/prod/tb/mscsim/gcpencoder/include,/vobs/mgwsim/prod/tb/mscsim/mscsim_swu/src,/vobs/mgwsim/prod/vmgw_swb/mgwc_swu/src,/vobs/mgwsim/prod/vmgw_swb/mgwt_swu/src,/vobs/mgwsim/prod/vmgw_swb/pc_if/inc,/vobs/mgwsim/prod/vmgw_swb/pc_swu/src,/vobs/mgwsim/prod/vmgw_swb/txl_swu/src
:vnoremap < <gv
:vnoremap > >gv

map mts :set ts=4
"map mson :syntax on
"map msoff :syntax off
map mp :set paste
map mnp :set nopaste
map mnum :set number
map mnnum :set nonumber
map mnh :nohlsearch
"map mnh :set nohlsearch
"map mh :set hlsearch
map mgdb :set ts=8:set noexpandtab

function EnablePaging ()
    map <DOWN> Lj
    map <UP> Hk
endfunction
command Page call EnablePaging()
map <f7> :Page

function DisablePaging ()
    unmap <DOWN>
    unmap <UP>
endfunction
command Nopage call DisablePaging()
map <f8> :Nopage

map <Space> 
map b 
map q :q

nmap ms :find %:t:r.cc<cr>
nmap mh :find %:t:r.h<cr>

set cm=blowfish

"call plug#begin('~/.vim/plugged')
"Plug 'leafgarland/typescript-vim'
"call plug#end()

"Do not save backups under <name>~ files
set nobackup
" Make the backup as a different file
" to keep the original file with the same inode
set backupcopy=yes
