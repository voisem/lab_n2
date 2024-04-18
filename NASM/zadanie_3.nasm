BITS 64

section .data
    endLine db 0x0a, 0
    result times 32 db 0
 

section .text
    global _start

; buf [rbp-32] 32 byte - буфер под ввод
_start:
    push rbp
    mov rbp, rsp
    sub rsp, 32

    lea rsi, [rbp-32]
    mov rdx, 32
    call _read

    lea rdi, [rbp-32]
    call _strlen

    mov rsi, rax
    call _str_to_int ; число лежит в rax

    mov r10, 1 ; номер числа
    mov r14, result ; r14 - указатель на result
    mov r9, rax

_loop:
    lea rsi, [rbp-32]
    mov rdx, 31
    call _read

    lea rdi, [rbp-32]
    call _strlen

    mov rsi, rax
    call _str_to_int ; число лежит в rax

    mov rdi, rax
    call _main_func ; в rax результат, 1 - сумма цифр меньше их произведения
    
    cmp rax, 1
    jne _loop_end

    mov rdi, r10
    call _intlen

    mov rdi, r10
    mov rsi, r14
    mov rdx, rax
    call _int_to_str    
    inc r14

    mov byte [r14], 0x20
    inc r14

_loop_end:

    
    inc r10
    dec r9
    cmp r9, 0
    jne _loop

    mov byte [r14], 0

    mov rsi, result ; выводим число
    mov rdx, 32
    call _write

    mov rsi, endLine ; перенос строки
    mov rdx, 1
    call _write

    call _exit

; sum [rbp-16] qword
; mul [rbp-8] qword

; rdi - число
_main_func:
    push rbp
    mov rbp, rsp
    sub rsp, 16

    mov r11, rdi
    xor rcx, rcx

    mov qword [rbp-16], 0
    mov qword [rbp-8], 1
_main_func_loop:
    xor rdx, rdx
    mov rax, r11
    mov r8, 10
    div r8 ; rdx:rax / r8 = rax, остаток в rdx
    
    add qword [rbp-16], rdx

    mov r8, qword [rbp-8]
    imul r8, rdx
    mov qword [rbp-8], r8

    mov r11, rax ; сохраняем всё, кроме последнего разряда в r11

    cmp r11, 0
    jne _main_func_loop
    
    mov rax, qword [rbp-16] ; sum
    mov rbx, qword [rbp-8] ; mul

    cmp rax, rbx
    jl _main_func_true
    mov rax, 0
    jmp _main_func_end
_main_func_true:
    mov rax, 1
_main_func_end:
    leave
    ret

; rdi - int number
; rsi - str ptr
; rdx - int len
_int_to_str:
    mov rax, rdi
    mov rbx, 10
    mov rcx, rdx
    dec rcx

_int_to_str_loop:
    xor rdx, rdx
    div rbx
    add rdx, 48
    
    mov byte [rsi+rcx], dl
    dec rcx

    cmp rax, 0
    jne _int_to_str_loop
    ret

; rdi - num
_intlen:
    mov rax, rdi
    mov r15, 10
    xor rcx, rcx
_intlen_loop:
    xor rdx, rdx
    div r15
    inc rcx
    cmp rax, 0
    jne _intlen_loop
    mov rax, rcx
    ret


; rdi - str ptr
; return string length
_strlen:
    xor rax, rax
    xor rbx, rbx
_strlen_loop:
    mov bl, byte [rdi + rax]
    inc rax
    cmp rbx, 0x0a
    jne _strlen_loop
    dec rax
    ret

; rdi - str ptr
; rsi - num length

; num [rbp-8] qword
; num length [rbp-16] qword
; string pointer [rbp-24] qword
_str_to_int:
    push rbp ; function prologue
    mov rbp, rsp
    sub rsp, 24

    mov qword [rbp-8], 0 ; num
    mov qword [rbp-16], rsi ; num length
    mov qword [rbp-24], rdi

    xor rax, rax
    xor rbx, rbx
    xor rdx, rdx

_str_to_int_loop:
    mov rdi, qword [rbp-24]
    xor rcx, rcx

    mov cl, byte [rdi+rdx]
    sub rcx, 0x30
    
    mov rsi, qword [rbp-16]
    mov rdi, 10
    sub rsi, rdx
    dec rsi

    call _pow

    imul rcx, rax
    add qword [rbp-8], rcx
    inc rdx
    cmp rdx, [rbp-16]
    jne _str_to_int_loop
    mov rax, [rbp - 8]
    leave
    ret

;rdi - num, rsi - power
_pow:
    xor rax, rax
    xor rbx, rbx

    mov rax, 1
_pow_loop:
    cmp rbx, rsi
    je _pow_end
    imul rax, rdi
    inc rbx
    jmp _pow_loop
_pow_end:
    ret

; rsi - указатель на строку
; rdx - кол-во байт для ввода
_read:
    mov rax, 0
    mov rdi, 0
    syscall
    ret

; rsi - str ptr
; rdx - bytes count to write
_write:
    mov rax, 1
    mov rdi, 0
    syscall
    ret

_exit:
    mov rax, 60
    xor rdi, rdi
    syscall