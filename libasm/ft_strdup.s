global _ft_strdup     
extern _ft_strlen    
extern _ft_strcpy    
extern _malloc  


section .text

_ft_strdup:
        push rdi         ; сохраняем строчку на стеке
        call _ft_strlen  ; len = ft_strlen(s1); strlen берёт значение rdi тоесть регистра 1 аргумента и возвращает rax
        inc rax          ; len++        
        mov  rdi, rax    ; rdi = len
        call _malloc     ; s2 = (char *)malloc(sizeof(char) * (len)), s2 == rax, маллок берёт значение rdi тоесть регистра 1 аргумента
        cmp rax, 0       ; if(!s2)
        je error    
        pop  rdi         ;  возвращаем строчку со стека
        mov  rsi, rdi                ; строку кидаем в dst
        mov  rdi, rax                ; dst кидаем выделеную память
        call _ft_strcpy              ; вызываем ft_strcpy принимает rsi и rdi возвращает rax
        ret                          ; возвращаем dst от ft_strcpy
error:        
        ret


;#include "libft.h"
;
;char	*ft_strdup(const char *s1)
;{
;	char	*s2;
;	int		len;
;	int		i;
;
;	len = ft_strlen(s1);
;	s2 = (char *)malloc(sizeof(char) * (len + 1));
;	if (!s2)
;	{
;		return (NULL);
;	}
;	i = 0;
;	while (s1[i] != '\0')
;	{
;		s2[i] = s1[i];
;		i += 1;
;	}
;	s2[i] = '\0';
;	return (s2);
;}