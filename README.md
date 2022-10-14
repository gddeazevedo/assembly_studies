# Assembly x86

## Registradores

- 64 bits | 32 bits | Utilização
  - rax | eax | valores que são retornados dos comandos em um registrador
  - rbx | ebx | registrador preservado
  - rcx | ecx | use livre como por exemplo contador
  - rdx | edx | uso livre em alguns comandos
  - rsp | esp | poteiro de uma pilha
  - rbp | ebp | registrador preservado, algumas vezes armazena ponteiros de pilha
  - rdi | rdi | na passagem de argumentos, contém a qtd desses
  - rsi | esi | na passagem de argumentos, contém os argumentos em si

## Hello World

- Um programa em Assembly tem 3 seções
  - section .data -> constantes
  - section .bss -> variáveis
  - section .text -> onde fica o programa de fato
- global _start é um ponteiro para o início do programa, todo programa em assembly deve possuir esse ponteiro
- global _start is an entry pointer for linker
- _start é um label
- Montar o programa: nasm -f elf64 **nome do arquivo**
- Depois de montar o programa, é preciso juntar o objeto (arquivo .o) com as bibliotecas do SO para poder executar o programa
- "Linkeditar" -> transformar o objeto (.o) em executável
- ld -s -o **nome do executável** **nome do arquivo**.o
- Sempre que terminar um programa Assembly use:

```asm
mov eax, 0x1 ; eax = 1
mov ebx, 0x0 ; finishing the program, analog to return 0 in C
int 0x80 ; OS executes the instructions
```
