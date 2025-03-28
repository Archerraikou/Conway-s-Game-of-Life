.data
    a: .space 1600
    b: .space 1600
    c: .space 1600
    m: .space 4
    n: .space 4
    p: .space 4
    k: .space 4
    col: .space 4
    lin: .space 4
    cuvlen: .long 0
    pow2: .long 128
    cer: .space 4
    max: .space 4
    cuv: .space 40
    cont: .long 0
    cuvant: .space 1
    scan: .asciz "%d"
    scanstr: .asciz "%s"
    print: .asciz "%d"
    printstr: .asciz "%s\n"
    printstr2: .asciz "%2s"
    printfvec: .asciz "%d\n"
    afis_A: .asciz "A"
    afis_B: .asciz "B"
    afis_C: .asciz "C"
    afis_D: .asciz "D"
    afis_E: .asciz "E"
    afis_F: .asciz "F"
    newl: .asciz "\n"
    afishex: .asciz "0x"
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
    push $m
    push $scan
    call scanf
    add $8,%esp
    push $n
    push $scan
    call scanf
    add $8,%esp
    push $p
    push $scan
    call scanf
    add $8,%esp
    xor %ecx,%ecx

et_citire:
    mov p,%eax
    cmp %eax,%ecx
    je et_citirek
    push %ecx
    push $lin
    push $scan
    call scanf
    add $8,%esp
    pop %ecx
    push %ecx
    push $col
    push $scan
    call scanf
    add $8,%esp
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
    call scanf
    add $8,%esp

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
        movl $b,%edi
        jmp et_citire_cerinta
    et_a:
        movl $a,%edi
        jmp et_citire_cerinta
et_citire_cerinta:
    push $cer
    push $scan
    call scanf
    addl $8,%esp
    cmpl $1,cer
    je et_citire_hex

et_citire_cuvant:
    push $cuv
    push $scanstr
    call scanf
    xor %ecx,%ecx
    incl m
    incl n
    jmp et_criptare

et_citire_hex:
    push $cuv
    push $scanstr
    call scanf
    addl $8,%esp
    xor %ecx,%ecx
    incl m
    incl n
    movl $8,pow2
    addl $2,cuvlen
    movl $0,cont
    jmp et_decriptare

et_criptare:
    movl $cuv,%esi
    movl $-1,lin
    et_fori:
        mov lin,%eax
        cmp %eax,m
        je et_criptare
        movl $-1,col
        et_forj:
            cmp $8,%ecx
            je et_reset
            mov col,%eax
            cmp %eax,n
            je et_fori_cont
            movl n,%eax
            decl %eax
            cmp col,%eax
            je et_marg
            movl col,%eax
            cmp $-1,%eax
            je et_marg
            movl lin,%eax
            cmp $-1,%eax
            je et_marg
            movl m,%eax
            decl %eax
            cmp lin,%eax
            je et_marg
            et_mat:
                mov lin,%eax
                xor %edx,%edx
                decl n
                mull n
                incl n
                add col,%eax
                movl $0,%ebx
                movl (%edi,%eax,4),%ebx
                jmp et_contj
            et_marg:
                xor %ebx,%ebx
                jmp et_contj
        et_contj:    
            push %eax
            movl cuvlen,%eax
            movb (%esi,%eax,1),%dl
            pop %eax
            test %dl,pow2
            jz et_pune0
            et_pune1:
                movl $c,%esi
                cmp $0,%ebx
                je et_pune10
                et_pune11:
                    push %eax
                    movl cont,%eax
                    movl $0,(%esi,%eax,4)
                    pop %eax
                    movl $cuv,%esi
                    jmp et_forj_cont
                et_pune10:
                    push %eax
                    movl cont,%eax
                    movl $1,(%esi,%eax,4)
                    pop %eax
                    movl $cuv,%esi
                    jmp et_forj_cont
            et_pune0:
                movl $c,%esi
                push %eax
                movl cont,%eax
                movl %ebx,(%esi,%eax,4)
                pop %eax
                lea cuv,%esi
                jmp et_forj_cont
        et_forj_cont:
            incl col
            xor %edx,%edx
            movl pow2,%eax
            movl $2,%ebx
            divl %ebx
            movl %eax,pow2
            incl %ecx
            incl cont
            jmp et_forj
    et_fori_cont:
        incl lin
        jmp et_fori   

et_reset:
    incl cuvlen
    xor %ebx,%ebx
    movl cuvlen,%eax
    movb (%esi,%eax,1),%bl
    cmp $0,%bl
    je et_afisare_hex
    movl $0,%ecx
    movl $128,pow2
    jmp et_forj

et_afisare_hex:
    lea c,%edi
    movl cuvlen,%eax
    xor %edx,%edx
    movl $8,%ebx
    mull %ebx
    movl %eax,max
    push $afishex
    push $printstr2
    call printf
    addl $8,%esp
    push $0
    call fflush
    addl $4,%esp
    xor %ecx,%ecx
    et_for:
        cmp max,%ecx
        je et_exit
        xor %ebx,%ebx
        movl (%edi,%ecx,4),%eax
        xor %edx,%edx
        push %ebx
        movl $8,%ebx
        mull %ebx
        pop %ebx
        addl %eax,%ebx
        incl %ecx
        movl (%edi,%ecx,4),%eax
        xor %edx,%edx
        push %ebx
        movl $4,%ebx
        mull %ebx
        pop %ebx
        addl %eax,%ebx
        incl %ecx
        movl (%edi,%ecx,4),%eax
        xor %edx,%edx
        push %ebx
        movl $2,%ebx
        mull %ebx
        pop %ebx
        addl %eax,%ebx
        incl %ecx
        movl (%edi,%ecx,4),%eax
        addl %eax,%ebx
        incl %ecx
        cmpl $10,%ebx
        jge et_afis_hex
        et_afisnr:
            push %ecx
            push %ebx
            push $print
            call printf
            addl $8,%esp
            push $0
            call fflush
            addl $4,%esp
            pop %ecx
            jmp et_for
        et_afis_hex:
            cmp $10,%ebx
            je et_afis_A
            cmp $11,%ebx
            je et_afis_B
            cmp $12,%ebx
            je et_afis_C
            cmp $13,%ebx
            je et_afis_D
            cmp $14,%ebx
            je et_afis_E
            cmp $15,%ebx
            je et_afis_F
            et_afis_A:
                push %eax
                push %ebx
                push %ecx
                push %edx
                movl $4,%eax
                movl $1,%ebx
                movl $afis_A, %ecx
                movl $1,%edx
                int $0x80
                pop %edx
                pop %ecx
                pop %ebx
                pop %eax
                jmp et_for
            et_afis_B:
                push %eax
                push %ebx
                push %ecx
                push %edx
                movl $4,%eax
                movl $1,%ebx
                movl $afis_B, %ecx
                movl $1,%edx
                int $0x80
                pop %edx
                pop %ecx
                pop %ebx
                pop %eax
                jmp et_for
            et_afis_C:
                push %eax
                push %ebx
                push %ecx
                push %edx
                movl $4,%eax
                movl $1,%ebx
                movl $afis_C, %ecx
                movl $1,%edx
                int $0x80
                pop %edx
                pop %ecx
                pop %ebx
                pop %eax
                jmp et_for
            et_afis_D:
                push %eax
                push %ebx
                push %ecx
                push %edx
                movl $4,%eax
                movl $1,%ebx
                movl $afis_D, %ecx
                movl $1,%edx
                int $0x80
                pop %edx
                pop %ecx
                pop %ebx
                pop %eax
                jmp et_for
            et_afis_E:
                push %eax
                push %ebx
                push %ecx
                push %edx
                movl $4,%eax
                movl $1,%ebx
                movl $afis_E, %ecx
                movl $1,%edx
                int $0x80
                pop %edx
                pop %ecx
                pop %ebx
                pop %eax
                jmp et_for
            et_afis_F:
                push %eax
                push %ebx
                push %ecx
                push %edx
                movl $4,%eax
                movl $1,%ebx
                movl $afis_F, %ecx
                movl $1,%edx
                int $0x80
                pop %edx
                pop %ecx
                pop %ebx
                pop %eax
                jmp et_for

et_decriptare:
    movl $cuv,%esi
    movl $-1,lin
    et_fori_decript:
        mov lin,%eax
        cmp %eax,m
        je et_decriptare
        movl $-1,col
        et_forj_decript:
            cmp $4,%ecx
            je et_reset_decript
            mov col,%eax
            cmp %eax,n
            je et_fori_cont_decript
            movl n,%eax
            decl %eax
            cmp col,%eax
            je et_marg_decript
            movl col,%eax
            cmp $-1,%eax
            je et_marg_decript
            movl lin,%eax
            cmp $-1,%eax
            je et_marg_decript
            movl m,%eax
            decl %eax
            cmp lin,%eax
            je et_marg_decript
            et_mat_decript:
                mov lin,%eax
                xor %edx,%edx
                decl n
                mull n
                incl n
                add col,%eax
                movl $0,%ebx
                movl (%edi,%eax,4),%ebx
                jmp et_contj_decript
            et_marg_decript:
                xor %ebx,%ebx
                jmp et_contj_decript
        et_contj_decript:    
            push %eax
            movl cuvlen,%eax
            movb (%esi,%eax,1),%dl
            cmp $58,%dl
            jl et_numar
            addb $9,%dl
            et_numar:
            pop %eax
            test %dl,pow2
            jz et_pune0_decript
            et_pune1_decript:
                movl $c,%esi
                cmp $0,%ebx
                je et_pune10_decript
                et_pune11_decript:
                    push %eax
                    movl cont,%eax
                    movl $0,(%esi,%eax,4)
                    pop %eax
                    movl $cuv,%esi
                    jmp et_forj_cont_decript
                et_pune10_decript:
                    push %eax
                    movl cont,%eax
                    movl $1,(%esi,%eax,4)
                    pop %eax
                    movl $cuv,%esi
                    jmp et_forj_cont_decript
            et_pune0_decript:
                movl $c,%esi
                push %eax
                movl cont,%eax
                movl %ebx,(%esi,%eax,4)
                pop %eax
                lea cuv,%esi
                jmp et_forj_cont_decript
        et_forj_cont_decript:
            incl col
            xor %edx,%edx
            movl pow2,%eax
            movl $2,%ebx
            divl %ebx
            movl %eax,pow2
            incl %ecx
            incl cont
            jmp et_forj_decript
    et_fori_cont_decript:
        incl lin
        jmp et_fori_decript   

et_reset_decript:
    incl cuvlen
    xor %ebx,%ebx
    movl cuvlen,%eax
    movb (%esi,%eax,1),%bl
    cmp $0,%bl
    je et_afisare_cuvant
    movl $0,%ecx
    movl $8,pow2
    jmp et_forj_decript

et_afisare_cuvant:
    lea c,%edi
    movl cuvlen,%eax
    subl $2,%eax
    xor %edx,%edx
    movl $4,%ebx
    mull %ebx
    movl %eax,max
    xor %ecx,%ecx
    et_for_afis_cuv:
        cmp max,%ecx
        je et_exit
        xor %ebx,%ebx
        movl (%edi,%ecx,4),%eax
        xor %edx,%edx
        push %ebx
        movl $128,%ebx
        mull %ebx
        pop %ebx
        addl %eax,%ebx
        incl %ecx
        movl (%edi,%ecx,4),%eax
        xor %edx,%edx
        push %ebx
        movl $64,%ebx
        mull %ebx
        pop %ebx
        addl %eax,%ebx
        incl %ecx
        movl (%edi,%ecx,4),%eax
        xor %edx,%edx
        push %ebx
        movl $32,%ebx
        mull %ebx
        pop %ebx
        addl %eax,%ebx
        incl %ecx
        movl (%edi,%ecx,4),%eax
        xor %edx,%edx
        push %ebx
        movl $16,%ebx
        mull %ebx
        pop %ebx
        addl %eax,%ebx
        incl %ecx
        movl (%edi,%ecx,4),%eax
        xor %edx,%edx
        push %ebx
        movl $8,%ebx
        mull %ebx
        pop %ebx
        addl %eax,%ebx
        incl %ecx
        movl (%edi,%ecx,4),%eax
        xor %edx,%edx
        push %ebx
        movl $4,%ebx
        mull %ebx
        pop %ebx
        addl %eax,%ebx
        incl %ecx
        movl (%edi,%ecx,4),%eax
        xor %edx,%edx
        push %ebx
        movl $2,%ebx
        mull %ebx
        pop %ebx
        addl %eax,%ebx
        incl %ecx
        movl (%edi,%ecx,4),%eax
        addl %eax,%ebx
        incl %ecx
        movl %ebx,cuvant
        push %eax
        push %ebx
        push %ecx
        push %edx
        movl $4,%eax
        movl $1,%ebx
        movl $cuvant, %ecx
        movl $1,%edx
        int $0x80
        pop %edx
        pop %ecx
        pop %ebx
        pop %eax
        jmp et_for_afis_cuv

et_exit:
    mov $1,%eax
    mov $0,%ebx
    int $0x80
