dane1 segment
tekst1   db "To jest tekst nr 1 :) $"
dane1 ends


code1 segment
   assume cs:code1
   nop
   nop
start1:
   mov   ax,seg w_stosu   
   mov   ss,ax
   mov   sp,offset w_stosu   


   mov   ax,seg tekst1
   mov   ds,ax
   mov   dx,offset tekst1
   mov   ah,9  ;wpypisz na ekran string z ds:dx zakonczony '$'
   int   21h   


   mov   al,0
   mov   ah,04ch  ;koniec program i powrot do sys
   int   021h

code1 ends



stos1 segment stack
   dw   250 dup(?)
w_stosu   dw   ?
stos1 ends

end start1
