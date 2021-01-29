fu! FoldRecursively()
    let l:ppos = line(".")
    normal mbzj
    let l:pos = line(".")

    if(foldlevel(".") == 1)
        if(l:ppos == l:pos)
            normal zo
        else
           silent! normal! v]zzC
        endif
        normal `b
    else
        normal `b
        " 'silent! normal!' seems somewhat verbose, but as far as I can
        " tell this is the best way to handle things.
        silent! normal! mav]zzC`azv
    endif
endfun

map zJ :call FoldRecursively()<CR>
