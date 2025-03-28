.data
    a: .space 1600
    b: .space 1600
    m: .space 4
    n: .space 4
    p: .space 4
    k: .space 4
    col: .space 4
    lin: .space 4
    fpointer: .space 4
    scan: .asciz "%d"
    print: .asciz "%d "
    prints: .asciz "%1s"
    printfvec: .asciz "%d\n"
    newl: .asciz "\n"
    filein: .asciz "in.txt"
    fileout: .asciz "out.txt"
    read: .asciz "r"
    write: .asciz "w"
.text
.global main
vecini:
    push %ebp
    movl %esp,%ebp
    push %edi
    mov 8(%ebp),%edi
    push %ebx
    xor %ebx,%ebx
    movl 12(%ebp),%eax
    movl 16(%ebp),%ecx
    cmp $0,%eax
    je et_vec1

    push %edx
    movl 24(%ebp),%edx
    subl $1,%edx
    cmp %eax,%edx
    je et_vec2
    pop %edx

    cmp $0,%ecx
    je et_vec3

    push %edx
    movl 20(%ebp),%edx
    subl $1,%edx
    cmp %ecx,%edx
    je et_vec4
    pop %edx

    et_vec0:
        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        jmp et_exitvec

    et_vec1:
        cmp $0,%ecx
        je et_vec5
        push %edx
        movl 20(%ebp),%edx
        subl $1,%edx
        cmp %ecx,%edx
        je et_vec6
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        jmp et_exitvec

    et_vec2:
        pop %edx
        cmp $0,%ecx
        je et_vec7
        push %edx
        movl 20(%ebp),%edx
        subl $1,%edx
        cmp %ecx,%edx
        je et_vec8
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        jmp et_exitvec

    et_vec3:
        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        jmp et_exitvec

    et_vec4:
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        jmp et_exitvec
        

    et_vec5:
        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        jmp et_exitvec

    et_vec6:
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        addl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        jmp et_exitvec

    et_vec7:
        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        addl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        jmp et_exitvec

    et_vec8:
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        subl $1,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        push %edx
        push %eax
        xor %edx,%edx
        push %ecx
        movl 20(%ebp),%ecx
        subl $1,%eax
        mull %ecx
        pop %ecx
        addl %ecx,%eax
        mov (%edi,%eax,4),%edx
        addl %edx,%ebx
        pop %eax
        pop %edx

        jmp et_exitvec


    et_exitvec:
        mov %ebx,%eax
        pop %ebx
        pop %edi
        pop %ebp
        ret

rezolva:
    push %ebp
    movl %esp,%ebp
    push %edi
    movl 8(%ebp),%edi
    movl 12(%ebp),%eax
    movl 16(%ebp),%ecx
    push %ebx
    push %edx
    xor %edx,%edx
    movl 20(%ebp),%ebx
    mull %ebx
    addl %ecx,%eax
    movl (%edi,%eax,4),%ebx
    cmp $1,%ebx
    je et_rez1
    
    et_rez0:
        movl 24(%ebp),%eax
        push %eax
        movl 20(%ebp),%eax
        push %eax
        movl 16(%ebp),%eax
        push %eax
        movl 12(%ebp),%eax
        push %eax
        push %edi
        call vecini
        addl $20,%esp
        cmp $3,%eax
        je et_exitrez1
        jmp et_exitrez0

    et_rez1:
        movl 24(%ebp),%eax
        push %eax
        movl 20(%ebp),%eax
        push %eax
        movl 16(%ebp),%eax
        push %eax
        movl 12(%ebp),%eax
        push %eax
        push %edi
        call vecini
        add $20,%esp
        cmp $2,%eax
        je et_exitrez1
        cmp $3,%eax       
        je et_exitrez1
        jmp et_exitrez0

    et_exitrez0:
        mov $0,%eax
        pop %edx
        pop %ebx
        pop %edi
        pop %ebp
        ret

    et_exitrez1:
        mov $1,%eax
        pop %edx
        pop %ebx
        pop %edi
        pop %ebp
        ret

main:
    push $read
    push $filein
    call fopen
    addl $8,%esp
    movl %eax,fpointer
    push $m
    push $scan
    push fpointer
    call fscanf
    add $12,%esp
    push $n
    push $scan
    push fpointer
    call fscanf
    add $12,%esp
    push $p
    push $scan
    push fpointer
    call fscanf
    add $12,%esp
    xor %ecx,%ecx

et_citire:
    mov p,%eax
    cmp %eax,%ecx
    je et_citirek
    push %ecx
    push $lin
    push $scan
    push fpointer
    call fscanf
    add $12,%esp
    pop %ecx
    push %ecx
    push $col
    push $scan
    push fpointer
    call fscanf
    add $12,%esp
    pop %ecx
    lea a,%edi
    mov lin,%eax
    xor %edx,%edx
    mull n
    add col,%eax
    movl $1,(%edi,%eax,4)
    inc %ecx
    jmp et_citire

et_citirek:
    push $k
    push $scan
    push fpointer
    call fscanf
    add $12,%esp
    push fpointer
    call fclose
    addl $4,%esp

et_rezolvare:
    lea a,%edi
    lea b,%esi
    xor %ecx,%ecx
    et_forciclu:
        cmp k,%ecx
        je et_corectare
        movl $0,lin
        et_forlin:
            mov lin,%eax
            cmp %eax,m
            je et_forciclu_cont
            movl $0,col
            et_forcol:
                mov col,%eax
                cmp %eax,n
                je et_forlin_cont
                push %ecx
                push m
                push n
                push col
                push lin
                push %edi
                call rezolva
                addl $20,%esp
                pop %ecx
                movl %eax,%ebx
                movl lin,%eax
                xor %edx,%edx
                mull n
                addl col,%eax
                movl %ebx,(%esi,%eax,4)
                movl $0,%eax
                incl col
                jmp et_forcol
        et_forlin_cont:
            incl lin
            jmp et_forlin
    et_forciclu_cont:
    push %eax
    movl %edi,%eax
    movl %esi,%edi
    movl %eax,%esi
    pop %eax
    incl %ecx
    jmp et_forciclu

et_corectare:
    movl k,%eax
    xor %edx,%edx
    movl $2,%ebx
    divl %ebx
    cmp $0,%edx
    je et_a
    et_b:
        lea b,%edi
        jmp et_afisare
    et_a:
        lea a,%edi
        jmp et_afisare
et_afisare:
    push $write
    push $fileout
    call fopen
    addl $8,%esp
    movl %eax,fpointer
    movl $0,lin
    et_fori:
        mov lin,%eax
        cmp %eax,m
        je et_exit
        movl $0,col
        et_forj:
            mov col,%eax
            cmp %eax,n
            je et_fori_cont
            mov lin,%eax
            xor %edx,%edx
            mull n
            add col,%eax
            movl $0,%ebx
            movl (%edi,%eax,4),%ebx
            push %ebx
            push $print
            push fpointer
            call fprintf
            pop %ebx
            incl col
            jmp et_forj
    et_fori_cont:
        push $newl
        push $prints
        push fpointer
        call fprintf
        addl $8,%esp
        incl lin
        jmp et_fori
    

et_exit:
    push fpointer
    call fclose
    addl $4,%esp
    mov $1,%eax
    mov $0,%ebx
    int $0x80
