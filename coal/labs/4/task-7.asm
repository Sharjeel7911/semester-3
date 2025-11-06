        .model small
        .stack 100h
        ;7. Write an assembly program to store 5 numbers in an array and then add them.  
        .data
           array dw 0xaaaa, 0xbbbb, 0xcccc, 0xdddd, 0xeeee
           sum dw 0x0000
        .code
        main proc
            mov ax, @data
            mov ds, ax
            
            mov cx, 0x0005
            mov si, offset array
            mov ax, 0
           
           ;loop runs 5 times 
        loop:
            add ax, [si]
            add si, 2
            loop loop
            
            ;save in memory variable
            mov sum, ax
            
        main endp
        .exit