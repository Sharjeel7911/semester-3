     .model small
     .stack 100h
     .data
     
     .code
     main proc    
        
        ;Write set of instructions to store 0x0BAD in memory at physical address 0x07DE1 
        ; 07DE : 0001  
        
        ;a)	Direct Addressing Mode
                
        mov ax, 0x07de
        mov ds, ax        
        mov [0x0001], 0x0bad
        
        ;b)	Register Indirect Addressing Mode  
        
        mov ax, 0x07de
        mov ds, ax    
        mov ax, 0x0bad 
        mov bx, 0x0001     
        mov [bx], ax    
        
        ;c)	Register relative base plus index addressing mode.    
        
        mov ax, 0x07de
        mov ds, ax  
        mov ax, 0x0bad
        mov bx, 0x0000
        mov si, 0x0000
        mov [bx + si + 0x1], ax
                                 
     main endp
     .exit