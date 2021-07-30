global _ft_strcmp

section .text

_ft_strcmp:
	mov 	rax, 0
	
loop:
	mov		cl, BYTE [rdi + rax] ;cl = s1[i]	
	mov		bl, BYTE [rsi + rax] ;bl = s2[i]
	cmp		cl, 0				 ;if(cl == 0)		
	je		return	
	cmp		bl, 0	             ;if(cl == 0 )		
	je		return	
	cmp 	cl, bl	             ;if(cl != bl)		
	jne 	return			
	inc 	rax	                 ;i++		
	jmp 	loop                 ;while()		

return:
    mov al, cl 					; al == cl al это 8 бит rax
    sub rax, rbx				;sub это rax = rax - rbx
        ret


;int	ft_strcmp(char *s1, char *s2)
;{
;	int i;
;
;	i = 0;
;	while (s1[i] == s2[i] && s1[i] != '\0' && s2[i] != '\0')
;		i++;
;	return (s1[i] - s2[i]);
;}
