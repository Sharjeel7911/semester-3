        .model small
        .stack 100h
        ;8. Take a variable in .data section, and calculate its table. (use loops).  
        .data
           num dw 0x0005
        .code
        main proc
            mov ax, @data
            mov ds, ax
            
            mov ax, num
            mov cx, 0x0009
           
           ;loop runs 9 times 
        loop:
            add ax, 0x0005
            loop loop
            
            ;save in memory variable
            mov num, ax
            
        main endp
        .exit