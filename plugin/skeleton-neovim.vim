" Date: 29/May/2022 - Sunday
" Author: Virgilio Murillo Ochoa
" personal github: Virgilio-AI
" linkedin: https://www.linkedin.com/in/virgilio-murillo-ochoa-b29b59203
" contact: virgiliomurilloochoa1@gmail.com
" web: virgiliomurillo.com


" ------------------------------------------------------------------------------
" Exit when your app has already been loaded (or "compatible" mode set)
if exists("g:loaded_skeleton") || &cp
  finish
endif
let g:loaded_skeleton= 1 " your version number
let s:keepcpo           = &cpo
set cpo&vim

" Public Interface:
" This are the default mappings
" Example:
" if !hasmapto('<Plug>AppFunction')
"   map <unique> <F11> <Plug>AppFunction
" endif

" Global Maps:

command! -nargs=1 ExpandSkeleton call <SID>ExpandSkeleton(<f-args>)

" ------------------------------------------------------------------------------
" Global Functions: here are the global functions that will call all the other
" local functions
" Example:
" fun! s:AppFunction()
"   call s:InternalAppFunction()
"   call s:InternalAppFunction()
" endfun

function! s:ExpandSkeleton(sni)
	let filename = expand('%')
	if (!filereadable(filename) || getfsize ( expand('%'))==0 ) && getline('$') == '' && line('$') == 1
		:execute "normal! i" . a:sni ."\<C-r>=UltiSnips#ExpandSnippet()\<CR>"
		:startinsert!
	endif
endfunction

" ------------------------------------------------------------------------------
" Internal Functions: these are the internal functions that cannot be accesed
" outside of the script
" Example:
" fun! s:InternalAppFunction()
" 	echo "calling the internal app function"
" endfun

" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo
