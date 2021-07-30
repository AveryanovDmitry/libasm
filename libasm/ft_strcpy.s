global _ft_strcpy

section .text

_ft_strcpy:
    mov rax, 0                         
    
loop:
    cmp byte[rsi + rax], 0  ;if((rsi + rax) == 0)
    je return               ;return 0 
    mov cl, byte[rsi + rax] ;char c = src[i]
    mov byte[rdi + rax], cl ;dest[i] = c
    inc rax                 ;i++
    jmp loop                ;while() 

return:
        mov byte[rdi + rax], 0  ;rdi[i] = '\0'
        mov rax, rdi            ;rax = dst
        ret                     ;return rax


;char *ft_strcpy(char *dest, char *src)
;{
;	int i;
;
;	i = 0;
;	while (src[i] != '\0')
;	{
;		dest[i] = src[i];
;		i++;
;	}
;	dest[i] = '\0';
;	return (dest);
;}