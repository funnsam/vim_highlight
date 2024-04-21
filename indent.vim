if exists("b:did_indent")
	finish
endif

let b:did_indent = 1

setlocal cindent
setlocal cinoptions=L0,(0,Ws,J1,j1
setlocal indentkeys=0{,0},!^F,o,O,0[,0]
setlocal nolisp
setlocal autoindent

setlocal indentexpr=GetKrillIndent(v:lnum)

if exists("*GetKrillIndent")
	finish
endif

function! s:prev_cl(lnum)
	let SKIP = '\v\s*(\/\/.*|\/\*.*)$'
	let nl = a:lnum

	while nl > 0
		let nl = prevnonblank(nl - 1)
		if getline(nl) !~? SKIP
			break
		endif
	endwhile

	return nl
endfunction

function GetKrillIndent(lnum)
	if a:lnum == 0
		return 0
	endif

	let this = getline(a:lnum)

	let prev_clnum = s:prev_cl(a:lnum)
	let prev_cl = getline(prev_clnum)
	let ind = indent(prev_clnum)

	if this =~ '\v[^\(\[\{]*[\)\]\}]$'
		return max([ind - 4, 0])
	elseif prev_cl =~ '.*[\(\[\{\\]$'
		return ind + 4
	else
		return ind
	endif
endfunction
