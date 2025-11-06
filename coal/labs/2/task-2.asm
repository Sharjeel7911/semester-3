      .model small
      .stack 100h
      .data
      
      .code
      main proc
      ;Write a program that calculates 6^6 by adding six to the accumulator six times.
       
      mov ax, 6
      add ax, 6
      add ax, 6
      add ax, 6
      add ax, 6
      add ax, 6
      
      main endp 
      .exit