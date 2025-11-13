 .model small
     .stack 100h
     .data
     
     .code
     main proc    
        
        mov al, 0x80
        add al, al
                                 
     main endp
     .exit