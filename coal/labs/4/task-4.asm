        .model small
        .stack 100h
        ;4.	Write program that sub two 16-bit numbers stored in memory at offset x2000h
        ;and checks if ZF is set. If ZF = 1, store 1 at memory location 4000h; 
        ;otherwise, store at 0x1000h.(use jmp)  
        .data
          num1 dw 0x1234     
          num2 dw 0x1234
        .code
        main proc 
            mov ax, @data
            mov ds, ax 
            
            mov bx, 0x2000 ;offset
            
            ;store in memory
            mov ax, num1
            mov [bx], ax

            mov ax, num2
            mov [bx + 2], ax
            
            ;load from memory and subtract
             mov ax, [bx]        
             sub ax, [bx + 2]
             
             jz mov_to_0x4000
             
             mov [bx - 0x1000], ax
             jmp end
             
        mov_to_0x4000:
             mov [bx + 0x2000], ax     
            
        main endp
        end:
        .exit