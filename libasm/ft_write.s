global _ft_write
extern ___error

section .text

_ft_write:
        mov rax, 0x2000004              ; помещаем в rax вызов write
        syscall                         ; syscall примет в себя rax
        jc __error                      ; если ошибка
        ret                             ; return (len_write)
__error:                                
        push r10                        ; сохраняем регистр r10
        mov r10, rax                    ; в rdx кладем длину строки
        call ___error                   ; вызываем error
        mov [rax], r10                  ; разыменовываем rax, и кладем туда что хранится в r10
        pop r10                         ; достаем r10
        mov rax, -1                     ; rax = -1
        ret                             ; возвращаем rax, который = -1