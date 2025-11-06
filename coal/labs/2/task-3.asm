      .model small
      .stack 100h
      .data
      
      .code
      main proc
       ;DX = AX + BH - CL + DX
       ;Initialize the AX, BX, CX, and DX with 0x0100, 0x55ab, 0x0a11 and 0x0001
       
       mov ax, 0x0100
       mov bx, 0x55ab 
       mov cx, 0x0a11 
       mov dx, 0x0001 
       
       add dx, ax
        
       mov al, bh
       mov ah, 0
       add dx, ax
       
       mov al, cl
       mov ah, 0
       sub dx, ax
       
       ;dx = 0x0145
       main endp 
      .exit