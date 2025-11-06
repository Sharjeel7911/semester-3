        .model small
        .stack 100h
        ;3.	Write code that set both PF and ZF.  
        .data
          
        .code
        main proc
            mov al, 0xff    
            sub al, 0xff  
            
        main endp
        .exit