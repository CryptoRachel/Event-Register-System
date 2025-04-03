BITS 64

section .data
    newline db 0xA, 0x0
    newline_len equ $ - newline

    ; EVENT ATTENDANCES LIMIT
    FinanceEvent1_total db 20
    FinanceEvent2_total db 30
    FinanceEvent3_total db 20

    TechEvent1_total db 30
    TechEvent2_total db 35
    TechEvent3_total db 20
    TechEvent4_total db 20
    TechEvent5_total db 25

    ArtEvent1_total db 15
    ArtEvent2_total db 10

    ; REMAIN EVENT ATTENDENCES NUMBER
    FinanceEvent1 db 19 
    FinanceEvent2 db 30  
    FinanceEvent3 db 16 

    TechEvent1 db 28  
    TechEvent2 db 34 
    TechEvent3 db 19 
    TechEvent4 db 18  
    TechEvent5 db 11  

    ArtEvent1 db 9 
    ArtEvent2 db 9  

    ; For saved the info to review upcoming
    financeinfo1 db "Global Financial Trends Summit 2025                   01 APR 2025   2pm" ,0x0
    financeinfo2 db "Innovations in FinTech and Blockchain                 22 APR 2025  11am" ,0x0 
    financeinfo3 db "Investment Strategies for the Digital Age             13 MAY 2025   2pm" ,0x0

    techinfo1    db "AI and Cybersecurity Conference 2025                  29 MAR 2025   9am" ,0x0
    techinfo2    db "The Future of Cloud Computing and Big Data            29 MAR 2025  12pm" ,0x0
    techinfo3    db "Tech Disruptors: Emerging Innovations & Startups      10 APR 2025  10am" ,0x0
    techinfo4    db "Quantum Computing: Opportunities and Challenges       11 APR 2025   3pm" ,0x0
    techinfo5    db "5G & IoT: Transforming the Digital Landscape          20 MAY 2025   6pm" ,0x0

    artinfo1     db "The Fusion of Digital and Traditional Art             28 MAY 2025   9am" ,0x0
    artinfo2     db "Modern Art Perspectives: A Global Exhibition          03 JUN 2025   7pm" ,0x0
    
	; MERCHANDISE STOCK
    merchandise_stock1 db 12 ; Keychain stock
    merchandise_stock2 db 8  ; Tshirt stock
    merchandise_stock3 db 22 ; Magnet stock
    merchandise_stock4 db 3  ; Tumbler stock

    ; MERCHANDISE PRICE
    merchandise_price1 db 10 ; Keychain price
    merchandise_price2 db 25 ; Tshirt price
    merchandise_price3 db 7  ; Magnet price
    merchandise_price4 db 32 ; Tumbler price

	;Mercandise name for stored
	merchandise1 db "Keychain", 0x0
	merchandise2 db "T-shirt", 0x0
	merchandise3 db "Magnet", 0x0
	merchandise4 db "Tumbler", 0x0
	
	; MENU
    main_menu db "==============================" , 0xA
              db "Main Menu"                      , 0xA
              db "==============================" , 0xA
              db "1. Event"                       , 0xA
              db "2. Merchandise"                 , 0xA
              db "3. Check Out"                   , 0xA
              db "4. Register lists"              , 0xA
              db "5. Exit"                        , 0xA
              db "==============================" , 0xA, 0x0
    main_menu_len           equ $ - main_menu

    event_menu db "==============================" , 0xA
               db "        Event Category        " , 0xA
               db "==============================" , 0xA
               db "1. Finance         3 Events   " , 0xA
               db "2. Technology      5 Events   " , 0xA
               db "3. Art             2 Events   " , 0xA
               db "4. Back"                        , 0xA
               db "==============================" , 0xA, 0x0
    event_menu_len          equ $ - event_menu
    
    merch_menu db "==============================" , 0xA
               db "Event Merchandise"              , 0xA
               db  "==============================" , 0xA
               db  "1. Keychain  RM10      "        , 0xA
               db  "2. T-shirt   RM25      "        , 0xA
               db  "3. Magnet    RM7       "        , 0xA
               db  "4. Tumbler   RM32      "        , 0xA
               db  "5. Back"                        , 0xA
               db  "==============================" , 0xA, 0x0
    merch_menu_len          equ $ - merch_menu

    checkout_menu db "==============================" , 0xA
                  db "Check Out"                      , 0xA
                  db "==============================" , 0xA
                  db " Item               Quantity"   , 0xA, 0x0 
    checkout_menu_len       equ $ - checkout_menu

    lists_menu db "=========================================================" , 0xA
                  db "        Register lists     " , 0xA
                  db "=========================================================" , 0xA
                  db " NAME              EVENT   ", 0XA
                  db "=========================================================" , 0xA, 0x0
    lists_menu_len          equ $ - lists_menu
                
    ; EVENT MENU
    finance_event_menu db "========================================================================================================================" , 0xA
                       db "Finance Event"                  , 0xA
                       db "========================================================================================================================" , 0xA
                       db "1. Global Financial Trends Summit 2025           01 APR 2025     2pm     (Attendances: ", 0x0")", 0xA
                       db "2. Innovations in FinTech and Blockchain         22 APR 2025    11am     (Attendances: ", 0x0")", 0xA
                       db "3. Investment Strategies for the Digital Age     13 MAY 2025     2pm     (Attendances: ", 0x0")", 0xA
                       db "========================================================================================================================" , 0xA, 0x0
    finance_event_menu_len equ $ - finance_event_menu

    tech_event_menu db "===============================================================================================================================" , 0xA
                    db "Technology Event"               , 0xA
                    db "===============================================================================================================================" , 0xA
                    db "1. AI and Cybersecurity Conference 2025                 29 MAR 2025      9am    (Attendances: ", 0x0")", 0xA
                    db "2. The Future of Cloud Computing and Big Data           29 MAR 2025     12pm    (Attendances: ", 0x0")", 0xA
                    db "3. Tech Disruptors: Emerging Innovations & Startups     10 APR 2025     10am    (Attendances: ", 0x0")" , 0xA
                    db "4. Quantum Computing: Opportunities and Challenges      11 APR 2025      3pm    (Attendances: ", 0x0")", 0xA
                    db "5. 5G & IoT: Transforming the Digital Landscape         20 MAY 2025      6pm    (Attendances: ", 0x0")", 0xA
                    db "===============================================================================================================================" , 0xA, 0x0
    tech_event_menu_len     equ $ - tech_event_menu

    art_event_menu db "============================================================================================================================" , 0xA
                   db "Art Event"                      , 0xA
                   db "============================================================================================================================" , 0xA
                   db "1. The Fusion of Digital and Traditional Art         28 MAY 2025     9am     (Attendances: ", 0x0")", 0xA
                   db "2. Modern Art Perspectives: A Global Exhibition      03 JUN 2025     7pm     (Attendances: ", 0x0")", 0xA
                   db "============================================================================================================================" , 0xA, 0x0
    art_event_menu_len      equ $ - art_event_menu

    ;MESSAGES
    option_Msg          db 'Enter your choice:', 0
    option_Msg_len  equ $ - option_Msg

    event_interest_Msg  db 'Do you interested?(Y/N)', 0
    event_interest_Msg_len  equ $ - event_interest_Msg

    enter_name_Msg      db 'Enter your name:' , 0
    enter_name_Msg_len      equ $ - enter_name_Msg

    enter_event_Msg     db 'Enter event number:', 0
    enter_event_Msg_len     equ $ - enter_event_Msg

    enter_quantity_Msg  db 'Enter quantity:', 0
    enter_quantity_Msg_len  equ $ - enter_quantity_Msg

    invalid_Msg         db 'Invalid input.', 0xA, 0x0
    invalid_Msg_len         equ $ - invalid_Msg

    event_add_Msg       db 'Event registed succesfully.', 0xA, 0x0
    event_add_Msg_len       equ $ - event_add_Msg

    event_full_Msg      db 'SORRY, EVENT WAS FULLY REGISTER.', 0xA, 0x0 
    event_full_Msg_len      equ $ - event_full_Msg

    merch_add_Msg       db 'Items was add to cart. Please procces to check out.', 0xA, 0x0 
    merch_add_Msg_len       equ $ - merch_add_Msg

    sold_out_Msg        db 'SORRY, THIS ITEM WAS OUT OF STOCK.', 0xA, 0x0   
    sold_out_Msg_len        equ $ - sold_out_Msg

    not_found_Msg       db 'No Records Found.', 0xA, 0x0 
    not_found_Msg_len       equ $ - not_found_Msg

	total_price_Msg 	db "TOTAL PRICE: RM", 0xA, 0x0
	total_price_Msg_len 	equ $ - total_price_Msg

    thankyou_Msg        db 'Thank you !', 0xA, 0x0 
    thankyou_Msg_len        equ $ - thankyou_Msg



    section .bss
        input1_buffer   resb 4  ; For enter choice
        input2_buffer   resb 20 ; For enter name
        input3_buffer   resb 2  ; For enter event number
        input4_buffer   resb 4  ; For enter quantity
        input5_buffer   resb 2  ; For interest 

        ;event attendances
        finance_attendances1 resb 4
        finance_attendances2 resb 4
        finance_attendances3 resb 4
        tech_attendances1 resb 4
        tech_attendances2 resb 4
        tech_attendances3 resb 4
        tech_attendances4 resb 4
        tech_attendances5 resb 4
        art_attendances1 resb 4
        art_attendances2 resb 4

        event_id resb 1

        ;register list
        register_list resb 1024
        list_ptr resq 1

		;checkout list
		checkout_list resb 1024
		check_ptr resq 1
		total_price resq 1
		itoa_buf resb 12

        
        
    ;MACRO
    %macro print_messages 2
        mov rax, 1
        mov rdi, 1
        mov rsi, %1 ; Display messages
        mov rdx, %2 ; Messages lenght
        syscall
    %endmacro

    %macro get_input_choice 2
        print_messages %1, %2   ; Display input messages 
        mov rax, 0          ; sys_read
        mov rdi, 0          ; keyboard
        mov rsi, input1_buffer         
        mov rdx, 2
        syscall
    %endmacro

    %macro get_input_name 2
        print_messages %1,%2   ; Display input messages 
        mov rax, 0          ; sys_read
        mov rdi, 0          ; keyboard
        mov rsi, input2_buffer      
        mov rdx, 20
        syscall
    %endmacro

    %macro get_input_event 2
        print_messages %1,%2   ; Display input messages 
        mov rax, 0          ; sys_read
        mov rdi, 0          ; keyboard
        mov rsi, input3_buffer      
        mov rdx, 2
        syscall
    %endmacro

    %macro get_input_interest 2
        print_messages %1,%2  ; Display interest prompt message
        mov rax, 0
        mov rdi, 0
        mov rsi, input5_buffer
        mov rdx, 2
        syscall
    %endmacro

	%macro get_input_quantity 2
        print_messages %1,%2  ; Display interest prompt message
        mov rax, 0
        mov rdi, 0
        mov rsi, input4_buffer
        mov rdx, 2
        syscall
    %endmacro

section .text
    global _start

_start:
    mov qword [list_ptr], register_list
	mov qword [check_ptr], checkout_list
	mov qword [total_price], 0
    jmp main_menu_loop

main_menu_loop:
    print_messages main_menu, main_menu_len 

    get_input_choice option_Msg, option_Msg_len

    cmp byte [input1_buffer], '1'
    je event_menu_loop
    cmp byte [input1_buffer], '2'
    je merch_menu_loop
    cmp byte [input1_buffer], '3'
    je checkout_menu_loop
    cmp byte [input1_buffer], '4'
    je lists_menu_loop
    cmp byte [input1_buffer], '5'
    je exit_loop
   
event_menu_loop:
    print_messages event_menu, event_menu_len
    
    get_input_choice option_Msg, option_Msg_len

    cmp byte [input1_buffer], '1'
    je finance_event_loop
    cmp byte [input1_buffer], '2'
    je tech_event_loop
    cmp byte [input1_buffer], '3'
    je art_event_loop
    cmp byte [input1_buffer], '4'
    je main_menu_loop

finance_event_loop:
    print_messages finance_event_menu, finance_event_menu_len

    get_input_interest event_interest_Msg, event_interest_Msg_len

    cmp byte [input5_buffer], 'Y'
    je finance_register_loop
    cmp byte [input5_buffer], 'y'        
    je finance_register_loop
    cmp byte [input5_buffer], 'N'
    je event_menu_loop
    cmp byte [input5_buffer], 'n'
    je event_menu_loop

    print_messages invalid_Msg, invalid_Msg_len    ; Input is not Y/y/N/n
    get_input_interest event_interest_Msg, event_interest_Msg_len

tech_event_loop:
    print_messages tech_event_menu, tech_event_menu_len
    get_input_interest event_interest_Msg, event_interest_Msg_len

    cmp byte [input5_buffer], 'Y'
    je tech_register_loop
    cmp byte [input5_buffer], 'y'        
    je tech_register_loop
    cmp byte [input5_buffer], 'N'
    je event_menu_loop
    cmp byte [input5_buffer], 'n'
    je event_menu_loop

    print_messages invalid_Msg, invalid_Msg_len    ; Input is not Y/y/N/n
    get_input_interest event_interest_Msg, event_interest_Msg_len

art_event_loop:
    print_messages art_event_menu, art_event_menu_len
    get_input_interest event_interest_Msg, event_interest_Msg_len

    cmp byte [input5_buffer], 'Y'
    je art_register_loop
        cmp byte [input5_buffer], 'y'        
        je art_register_loop
        cmp byte [input5_buffer], 'N'
        je event_menu_loop
        cmp byte [input5_buffer], 'n'
        je event_menu_loop

        print_messages invalid_Msg, invalid_Msg_len    ; Input is not Y/y/N/n
        get_input_interest event_interest_Msg, event_interest_Msg_len

merch_menu_loop:
    print_messages merch_menu, merch_menu_len

	get_input_choice option_Msg, option_Msg_len

	cmp byte [input1_buffer], '5'
	je main_menu_loop

	get_input_quantity enter_quantity_Msg, enter_quantity_Msg_len
	call atoi
	mov rcx, rax

	cmp byte [input1_buffer], '1'
	je merch_keychain
	cmp byte [input1_buffer], '2'
	je merch_tshirt
	cmp byte [input1_buffer], '3'
	je merch_magnet
	cmp byte [input1_buffer], '4'
	je merch_tumbler

    jmp merch_menu_loop

checkout_menu_loop:
    print_messages checkout_menu, checkout_menu_len

	mov rax, 1
	mov rdi, 1
	mov rsi, checkout_list
	mov rdx, [check_ptr] 
    sub rdx, checkout_list
	syscall

	print_messages newline, newline_len
	print_messages total_price_Msg, total_price_Msg_len

	mov rax, [total_price]
	call itoa
	mov rsi, itoa_buf

	mov rax, 1
	mov rdi, 1
	mov rdx, 12
	syscall

    jmp main_menu_loop

lists_menu_loop:
    print_messages lists_menu, lists_menu_len

    mov rax, register_list
    mov rbx, [list_ptr]
    sub rbx, rax

    cmp rbx, 0
    je no_record_found

    mov rax, 1
    mov rdi, 1
    mov rsi, register_list
    mov rdx, rbx
    syscall

    jmp main_menu_loop

no_record_found:
    print_messages not_found_Msg, not_found_Msg_len

exit_loop:
    mov rax, 60    ; sys_exit
    xor rdi, rdi   ; Return code 0
    syscall

;***********************************************************************

;***********************************************************************
finance_register_loop:
    get_input_event enter_event_Msg, enter_event_Msg_len
    
    cmp byte [input3_buffer],'1'
    je check_finance1
    cmp byte [input3_buffer],'2'
    je check_finance2
    cmp byte [input3_buffer],'3'
    je check_finance3

    print_messages invalid_Msg, invalid_Msg_len
    jmp finance_register_loop

art_register_loop:
    get_input_event enter_event_Msg, enter_event_Msg_len
    
    cmp byte [input3_buffer],'1'
    je check_art1
    cmp byte [input3_buffer],'2'
    je check_art2

    print_messages invalid_Msg, invalid_Msg_len
    jmp art_register_loop

tech_register_loop:
    get_input_event enter_event_Msg, enter_event_Msg_len
    
    cmp byte [input3_buffer],'1'
    je check_tech1
	cmp byte [input3_buffer],'2'
    je check_tech2
	cmp byte [input3_buffer],'3'
    je check_tech3
    cmp byte [input3_buffer],'4'
    je check_tech4
	cmp byte [input3_buffer],'5'
    je check_tech5

    print_messages invalid_Msg, invalid_Msg_len
    jmp tech_register_loop

;*** Check event avalaible ***

check_finance1:
    mov al, [FinanceEvent1]
    mov bl, [FinanceEvent1_total]
    cmp al, bl
    jae event_full_loop

    mov byte [event_id], 1

    get_input_name enter_name_Msg, enter_name_Msg_len
    call remove_newline

    mov rsi, input2_buffer
    mov rdi, finance_attendances1
    call store_register
    print_messages event_add_Msg, event_add_Msg_len
    jmp main_menu_loop

check_finance2:
    mov al, [FinanceEvent2]
    mov bl, [FinanceEvent2_total]
    cmp al, bl
    jae event_full_loop

    mov byte [event_id], 2

    get_input_name enter_name_Msg, enter_name_Msg_len
    call remove_newline

    mov rsi, input2_buffer
    mov rdi, finance_attendances2
    call store_register
    print_messages event_add_Msg, event_add_Msg_len
    jmp main_menu_loop

check_finance3:
    mov al, [FinanceEvent3]
    mov bl, [FinanceEvent3_total]
    cmp al, bl
    jae event_full_loop

    mov byte [event_id], 3

    get_input_name enter_name_Msg, enter_name_Msg_len
    call remove_newline

    mov rsi, input2_buffer
    mov rdi, finance_attendances3
    call store_register
    print_messages event_add_Msg, event_add_Msg_len
    jmp main_menu_loop

check_tech1:
    mov al, [TechEvent1]
    mov bl, [TechEvent1_total]
    cmp al, bl
    jae event_full_loop

    mov byte [event_id], 4

    get_input_name enter_name_Msg, enter_name_Msg_len
    call remove_newline

    mov rsi, input2_buffer
    mov rdi, tech_attendances1
    call store_register
    print_messages event_add_Msg, event_add_Msg_len
    jmp main_menu_loop

check_tech2:
    mov al, [TechEvent2]
    mov bl, [TechEvent2_total]
    cmp al, bl
    jae event_full_loop

    mov byte [event_id], 5

    get_input_name enter_name_Msg, enter_name_Msg_len
    call remove_newline

    mov rsi, input2_buffer
    mov rdi, tech_attendances2
    call store_register
    print_messages event_add_Msg, event_add_Msg_len
    jmp main_menu_loop

check_tech3:
    mov al, [TechEvent3]
    mov bl, [TechEvent3_total]
    cmp al, bl
    jae event_full_loop

    mov byte [event_id], 6

    get_input_name enter_name_Msg, enter_name_Msg_len
    call remove_newline

    mov rsi, input2_buffer
    mov rdi, tech_attendances3
    call store_register
    print_messages event_add_Msg, event_add_Msg_len
    jmp main_menu_loop

check_tech4:
    mov al, [TechEvent4]
    mov bl, [TechEvent4_total]
    cmp al, bl
    jae event_full_loop

    mov byte [event_id], 7

    get_input_name enter_name_Msg, enter_name_Msg_len
    call remove_newline

    mov rsi, input2_buffer
    mov rdi, tech_attendances4
    call store_register
    print_messages event_add_Msg, event_add_Msg_len
    jmp main_menu_loop

check_tech5:
    mov al, [TechEvent5]
    mov bl, [TechEvent5_total]
    cmp al, bl
    jae event_full_loop

    mov byte [event_id], 8

    get_input_name enter_name_Msg, enter_name_Msg_len
    call remove_newline

    mov rsi, input2_buffer
    mov rdi, tech_attendances5
    call store_register
    print_messages event_add_Msg, event_add_Msg_len
    jmp main_menu_loop

check_art1:
    mov al, [ArtEvent1]
    mov bl, [ArtEvent1_total]
    cmp al, bl
    jae event_full_loop

    mov byte [event_id], 9

    get_input_name enter_name_Msg, enter_name_Msg_len
    call remove_newline

    mov rsi, input2_buffer
    mov rdi, art_attendances1
    call store_register
    print_messages event_add_Msg, event_add_Msg_len
    jmp main_menu_loop

check_art2:
    mov al, [ArtEvent2]
    mov bl, [ArtEvent2_total]
    cmp al, bl
    jae event_full_loop

    mov byte [event_id], 10

    get_input_name enter_name_Msg, enter_name_Msg_len
    call remove_newline

    mov rsi, input2_buffer
    mov rdi, art_attendances2
    call store_register
    print_messages event_add_Msg, event_add_Msg_len
    jmp main_menu_loop

;*************************************************************************

;*************************************************************************
merch_keychain:
	movzx rbx, byte [merchandise_stock1]
	cmp rcx, rbx
	ja not_enough_stock

	sub byte [merchandise_stock1], cl

	movzx rdx, byte [merchandise_price1]
	mov rax, rcx
	imul rax, rdx

	mov rsi, merchandise1
	call store_checkout

	print_messages merch_add_Msg, merch_add_Msg_len
	jmp main_menu_loop

merch_tshirt:
	movzx rbx, byte [merchandise_stock2]
	cmp rcx, rbx
	ja not_enough_stock

	sub byte [merchandise_stock2], cl

	movzx rdx, byte [merchandise_price2]
	mov rax, rcx
	imul rax, rdx

	mov rsi, merchandise2
	call store_checkout

	print_messages merch_add_Msg, merch_add_Msg_len
	jmp main_menu_loop

merch_magnet:
	movzx rbx, byte [merchandise_stock3]
	cmp rcx, rbx
	ja not_enough_stock

	sub byte [merchandise_stock3], cl

	movzx rdx, byte [merchandise_price3]
	mov rax, rcx
	imul rax, rdx

	mov rsi, merchandise3
	call store_checkout

	print_messages merch_add_Msg, merch_add_Msg_len
	jmp main_menu_loop

merch_tumbler:
	movzx rbx, byte [merchandise_stock4]
	cmp rcx, rbx
	ja not_enough_stock

	sub byte [merchandise_stock4], cl

	movzx rdx, byte [merchandise_price4]
	mov rax, rcx
	imul rax, rdx

	mov rsi, merchandise4
	call store_checkout

	print_messages merch_add_Msg, merch_add_Msg_len
	jmp main_menu_loop

not_enough_stock:
	print_messages sold_out_Msg, sold_out_Msg_len
	jmp merch_menu_loop

store_checkout:
	push rbx
	mov rbx, rax

	mov rdx, [total_price]
	add rdx, rbx
	mov [total_price], rdx

	mov rdi, [check_ptr]

.copy_merch:
	mov al, byte [rsi]
	cmp al, 0
	je .done_merch
	stosb
	inc rsi
	jmp .copy_merch

.done_merch:
	mov byte [rdi], ' '
	inc rdi
	mov byte [rdi], 'x'
	inc rdi
	mov byte [rdi], ' '
	inc rdi

	mov rax, rcx
	call itoa
	mov rsi, itoa_buf

.copy_quantity:
	mov al, byte [rsi]
	cmp al, 0
	je .done_quantity
	stosb
	inc rsi
	jmp .copy_quantity

.done_quantity:
	mov byte [rdi], ' '
	inc rdi
	mov byte [rdi], '='
	inc rdi
	mov byte [rdi], ' '
	inc rdi
	mov byte [rdi], 'R'
	inc rdi
	mov byte [rdi], 'M'
	inc rdi

	mov rax, rbx
	call itoa
	mov rsi, itoa_buf

.copy_total:
	mov al, byte [rsi]
	cmp al, 0
	je .done_total
	stosb
	inc rsi
	jmp .copy_total

.done_total:
	mov byte [rdi], 0xA
	inc rdi

	mov [check_ptr], rdi

	pop rbx
	ret


;*************************************************************************

;*************************************************************************
remove_newline:
    mov rdi, input2_buffer
    mov rcx, 20

remove_loop:
    cmp byte[rdi], 0xA
    je replace_newline
    cmp byte[rdi], 0
    je done_removal
    inc rdi
    loop remove_loop

done_removal:
    ret

replace_newline:
    mov byte [rdi], ' '
    ret

;*************************************************************************

;*************************************************************************

atoi:
	mov rsi, input4_buffer
	xor rax, rax

atoi_loop:
	mov bl, byte [rsi]
	cmp bl, 0xA
	je done_atoi
	cmp bl, 0
	je done_atoi
	sub bl, '0'
	movzx rbx, bl
	imul rax, rax, 10
	add rax, rbx
	inc rsi
	jmp atoi_loop

done_atoi:
	ret

itoa:
	cmp rax, 0
	jne itoa_loop
	mov byte [itoa_buf], '0'
	mov byte [itoa_buf+1], 0
	ret

itoa_loop:
	mov rbx, itoa_buf
	xor rcx, rcx

itoa_divide:
    xor rdx, rdx
    mov rbx, 10
    div rbx           
    add rdx, '0'
    push rdx           
    inc rcx
    cmp rax, 0
    jne itoa_divide

    mov rdi, itoa_buf
	
itoa_pop:
    pop rax
    mov byte [rdi], al
    inc rdi
    loop itoa_pop
    mov byte [rdi], 0  
    ret

;*************************************************************************

;*************************************************************************
store_register:
    mov rbx, register_list
    mov rcx, [list_ptr]

    mov rdx, rcx
    add rdx, 50
    cmp rdx, register_list + 1024
    jae event_full_loop

    mov rdi, rcx
    mov rsi, input2_buffer
    mov rcx, 20
    rep movsb

    mov byte[rdi], ' '
    inc rdi
    mov byte[rdi], '-'
    inc rdi
    mov byte[rdi], ' '
    inc rdi

    movzx rax, byte [event_id]
    cmp rax, 1
    je .finance1
    cmp rax, 2
    je .finance2
    cmp rax, 3
    je .finance3

    cmp rax, 4
    je .tech1
    cmp rax, 5
    je .tech2
    cmp rax, 6
    je .tech3
    cmp rax, 7
    je .tech4
    cmp rax, 8
    je .tech5

    je .art1
    cmp rax, 10
    je .art2

.finance1:
    mov rsi, financeinfo1
    jmp copy_event

.finance2:
    mov rsi, financeinfo2
    jmp copy_event

.finance3:
    mov rsi, financeinfo3
    jmp copy_event

.tech1:
    mov rsi, techinfo1
    jmp copy_event

.tech2:
    mov rsi, techinfo2
    jmp copy_event

.tech3:
    mov rsi, techinfo3
    jmp copy_event

.tech4:
    mov rsi, techinfo4
    jmp copy_event

.tech5:
    mov rsi, techinfo5
    jmp copy_event

.art1:
    mov rsi, artinfo1
    jmp copy_event

.art2:
    mov rsi, artinfo2
    jmp copy_event

copy_event:
    mov rcx, 40
    rep movsb

    mov byte [rdi], 0xA
    inc rdi

    mov [list_ptr], rdi
    ret

event_full_loop:
    print_messages event_full_Msg, event_full_Msg_len
    jmp event_menu_loop

;*************************************************************************

;                                   THE END

;*************************************************************************
