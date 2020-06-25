
_check_Keypad:

;Lab8.c,40 :: 		void check_Keypad()
;Lab8.c,42 :: 		kp = keypad_key_Press();
	CALL        _Keypad_Key_Press+0, 0
	MOVF        R0, 0 
	MOVWF       _kp+0 
;Lab8.c,43 :: 		if (kp == 1)
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_check_Keypad0
;Lab8.c,45 :: 		team=1; // for  fenerbahce
	MOVLW       1
	MOVWF       _team+0 
;Lab8.c,46 :: 		}
L_check_Keypad0:
;Lab8.c,47 :: 		if (kp == 2)
	MOVF        _kp+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_check_Keypad1
;Lab8.c,49 :: 		team=2; // for besiktas
	MOVLW       2
	MOVWF       _team+0 
;Lab8.c,50 :: 		}
L_check_Keypad1:
;Lab8.c,51 :: 		if (kp == 12)
	MOVF        _kp+0, 0 
	XORLW       12
	BTFSS       STATUS+0, 2 
	GOTO        L_check_Keypad2
;Lab8.c,53 :: 		team=3; // for galatasaray
	MOVLW       3
	MOVWF       _team+0 
;Lab8.c,54 :: 		}
L_check_Keypad2:
;Lab8.c,55 :: 		if (kp == 5)
	MOVF        _kp+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_check_Keypad3
;Lab8.c,57 :: 		team=4; // for basaksehir
	MOVLW       4
	MOVWF       _team+0 
;Lab8.c,58 :: 		}
L_check_Keypad3:
;Lab8.c,59 :: 		if (kp == 6)
	MOVF        _kp+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_check_Keypad4
;Lab8.c,61 :: 		team=5; // for bursaspor
	MOVLW       5
	MOVWF       _team+0 
;Lab8.c,62 :: 		}
L_check_Keypad4:
;Lab8.c,63 :: 		if (kp == 13)
	MOVF        _kp+0, 0 
	XORLW       13
	BTFSS       STATUS+0, 2 
	GOTO        L_check_Keypad5
;Lab8.c,65 :: 		team=6; // for trabzonspor
	MOVLW       6
	MOVWF       _team+0 
;Lab8.c,66 :: 		}
L_check_Keypad5:
;Lab8.c,67 :: 		if (kp == 9)
	MOVF        _kp+0, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L_check_Keypad6
;Lab8.c,69 :: 		team=7; // for alanyaspor
	MOVLW       7
	MOVWF       _team+0 
;Lab8.c,70 :: 		}
L_check_Keypad6:
;Lab8.c,71 :: 		if (kp == 10)
	MOVF        _kp+0, 0 
	XORLW       10
	BTFSS       STATUS+0, 2 
	GOTO        L_check_Keypad7
;Lab8.c,73 :: 		team=8; // for denizlispor
	MOVLW       8
	MOVWF       _team+0 
;Lab8.c,74 :: 		}
L_check_Keypad7:
;Lab8.c,75 :: 		if (kp == 14)
	MOVF        _kp+0, 0 
	XORLW       14
	BTFSS       STATUS+0, 2 
	GOTO        L_check_Keypad8
;Lab8.c,77 :: 		team=9; // for göztepe
	MOVLW       9
	MOVWF       _team+0 
;Lab8.c,78 :: 		}
L_check_Keypad8:
;Lab8.c,79 :: 		}
L_end_check_Keypad:
	RETURN      0
; end of _check_Keypad

_fenerbahce_Animation_forward:

;Lab8.c,83 :: 		fenerbahce_Animation_forward()
;Lab8.c,85 :: 		Glcd_Image(fenerbahce);  // display fenerbahce
	MOVLW       _fenerbahce+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_fenerbahce+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_fenerbahce+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;Lab8.c,86 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_forward9:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_forward9
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_forward9
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_forward9
	NOP
	NOP
;Lab8.c,87 :: 		check_Keypad();      // chech if we pressed to keypad
	CALL        _check_Keypad+0, 0
;Lab8.c,88 :: 		Glcd_Fill(0x00);  // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,89 :: 		Glcd_Write_Text_Adv("EN",50,5); // Write text
	MOVLW       ?lstr1_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr1_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,90 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_forward10:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_forward10
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_forward10
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_forward10
	NOP
	NOP
;Lab8.c,91 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,92 :: 		Glcd_Write_Text_Adv("BUYUK",70,5); // Write text
	MOVLW       ?lstr2_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr2_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       70
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,93 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_forward11:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_forward11
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_forward11
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_forward11
	NOP
	NOP
;Lab8.c,94 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,95 :: 		Glcd_Write_Text_Adv("FENER",30,20); // Write text
	MOVLW       ?lstr3_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr3_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       30
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       20
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,96 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_forward12:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_forward12
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_forward12
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_forward12
	NOP
	NOP
;Lab8.c,97 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,98 :: 		Glcd_Write_Text_Adv("SAMPIYON",70,20); // Write text
	MOVLW       ?lstr4_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr4_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       70
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       20
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,99 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_forward13:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_forward13
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_forward13
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_forward13
	NOP
	NOP
;Lab8.c,100 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,101 :: 		Glcd_Write_Text_Adv("FENER",50,35); // Write text
	MOVLW       ?lstr5_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr5_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       35
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,102 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_forward14:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_forward14
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_forward14
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_forward14
	NOP
	NOP
;Lab8.c,103 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,104 :: 		Glcd_Image(fenerbahce);  // display fenerbahce
	MOVLW       _fenerbahce+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_fenerbahce+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_fenerbahce+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;Lab8.c,105 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_forward15:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_forward15
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_forward15
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_forward15
	NOP
	NOP
;Lab8.c,106 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,107 :: 		}
L_end_fenerbahce_Animation_forward:
	RETURN      0
; end of _fenerbahce_Animation_forward

_fenerbahce_Animation_Reverse:

;Lab8.c,110 :: 		fenerbahce_Animation_Reverse()
;Lab8.c,112 :: 		Glcd_Image(fenerbahce);  // display fenrbahce
	MOVLW       _fenerbahce+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_fenerbahce+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_fenerbahce+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;Lab8.c,113 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_fenerbahce_Animation_Reverse16:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_Reverse16
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_Reverse16
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_Reverse16
	NOP
	NOP
;Lab8.c,114 :: 		check_Keypad();      // chech if we pressed to keypad
	CALL        _check_Keypad+0, 0
;Lab8.c,115 :: 		Glcd_Fill(0x00);  // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,116 :: 		Glcd_Write_Text_Adv("EN",50,5); // Write text
	MOVLW       ?lstr6_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr6_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,117 :: 		Glcd_Write_Text_Adv("BUYUK",70,5); // Write text
	MOVLW       ?lstr7_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr7_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       70
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,118 :: 		Glcd_Write_Text_Adv("FENER",30,20); // Write text
	MOVLW       ?lstr8_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr8_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       30
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       20
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,119 :: 		Glcd_Write_Text_Adv("SAMPIYON",70,20); // Write text
	MOVLW       ?lstr9_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr9_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       70
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       20
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,120 :: 		Glcd_Write_Text_Adv("FENER",50,35); // Write text
	MOVLW       ?lstr10_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr10_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       35
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,121 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_Reverse17:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_Reverse17
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_Reverse17
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_Reverse17
	NOP
	NOP
;Lab8.c,122 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,123 :: 		Glcd_Fill(0x00);  // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,124 :: 		Glcd_Write_Text_Adv("EN",50,5); // Write text
	MOVLW       ?lstr11_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr11_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,125 :: 		Glcd_Write_Text_Adv("BUYUK",70,5); // Write text
	MOVLW       ?lstr12_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr12_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       70
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,126 :: 		Glcd_Write_Text_Adv("FENER",30,20); // Write text
	MOVLW       ?lstr13_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr13_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       30
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       20
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,127 :: 		Glcd_Write_Text_Adv("SAMPIYON",70,20); // Write text
	MOVLW       ?lstr14_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr14_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       70
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       20
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,128 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_Reverse18:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_Reverse18
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_Reverse18
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_Reverse18
	NOP
	NOP
;Lab8.c,129 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,130 :: 		Glcd_Fill(0x00);  // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,131 :: 		Glcd_Write_Text_Adv("EN",50,5); // Write text
	MOVLW       ?lstr15_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr15_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,132 :: 		Glcd_Write_Text_Adv("BUYUK",70,5); // Write text
	MOVLW       ?lstr16_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr16_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       70
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,133 :: 		Glcd_Write_Text_Adv("FENER",30,20); // Write text
	MOVLW       ?lstr17_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr17_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       30
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       20
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,134 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_Reverse19:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_Reverse19
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_Reverse19
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_Reverse19
	NOP
	NOP
;Lab8.c,135 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,136 :: 		Glcd_Fill(0x00);  // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,137 :: 		Glcd_Write_Text_Adv("EN",50,5); // Write text
	MOVLW       ?lstr18_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr18_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,138 :: 		Glcd_Write_Text_Adv("BUYUK",70,5); // Write text
	MOVLW       ?lstr19_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr19_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       70
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,139 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_Reverse20:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_Reverse20
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_Reverse20
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_Reverse20
	NOP
	NOP
;Lab8.c,140 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,141 :: 		Glcd_Fill(0x00);  // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,142 :: 		Glcd_Write_Text_Adv("EN",50,5); // Write text
	MOVLW       ?lstr20_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr20_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	MOVLW       50
	MOVWF       FARG_Glcd_Write_Text_Adv_x+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,143 :: 		Delay_ms(300);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_fenerbahce_Animation_Reverse21:
	DECFSZ      R13, 1, 1
	BRA         L_fenerbahce_Animation_Reverse21
	DECFSZ      R12, 1, 1
	BRA         L_fenerbahce_Animation_Reverse21
	DECFSZ      R11, 1, 1
	BRA         L_fenerbahce_Animation_Reverse21
	NOP
	NOP
;Lab8.c,144 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,145 :: 		Glcd_Fill(0x00);  // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,146 :: 		Glcd_Image(fenerbahce);  // display fenerbahce
	MOVLW       _fenerbahce+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_fenerbahce+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_fenerbahce+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;Lab8.c,147 :: 		}
L_end_fenerbahce_Animation_Reverse:
	RETURN      0
; end of _fenerbahce_Animation_Reverse

_animation_forward:

;Lab8.c,150 :: 		animation_forward()
;Lab8.c,152 :: 		for(x=x;x<=120; x=x+2) //loop for move image
L_animation_forward22:
	MOVF        _x+0, 0 
	SUBLW       120
	BTFSS       STATUS+0, 0 
	GOTO        L_animation_forward23
;Lab8.c,154 :: 		if(team==2)  // check which image
	MOVF        _team+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_forward25
;Lab8.c,156 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,157 :: 		Glcd_PartialImage(x,0,128,64,128,64,besiktas); // besiktas
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _besiktas+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_besiktas+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_besiktas+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,158 :: 		}
L_animation_forward25:
;Lab8.c,159 :: 		if(team==3)  // check which image
	MOVF        _team+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_forward26
;Lab8.c,161 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,162 :: 		Glcd_PartialImage(x,0,128,64,128,64,galatasaray); // galatasaray
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _galatasaray+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_galatasaray+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_galatasaray+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,163 :: 		}
L_animation_forward26:
;Lab8.c,164 :: 		if(team==4)  // check which image
	MOVF        _team+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_forward27
;Lab8.c,166 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,167 :: 		Glcd_PartialImage(x,0,128,64,128,64,basaksehir); // basaksehir
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _basaksehir+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_basaksehir+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_basaksehir+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,168 :: 		}
L_animation_forward27:
;Lab8.c,169 :: 		if(team==5)  // check which image
	MOVF        _team+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_forward28
;Lab8.c,171 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,172 :: 		Glcd_PartialImage(x,0,128,64,128,64,bursaspor); // bursaspor
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _bursaspor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_bursaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_bursaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,173 :: 		}
L_animation_forward28:
;Lab8.c,174 :: 		if(team==6)  // check which image
	MOVF        _team+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_forward29
;Lab8.c,176 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,177 :: 		Glcd_PartialImage(x,0,128,64,128,64,trabzonspor); // trabzonspor
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _trabzonspor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_trabzonspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_trabzonspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,178 :: 		}
L_animation_forward29:
;Lab8.c,179 :: 		if(team==7)  // check which image
	MOVF        _team+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_forward30
;Lab8.c,181 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,182 :: 		Glcd_PartialImage(x,0,128,64,128,64,alanyaspor); // alanyaspor
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _alanyaspor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_alanyaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_alanyaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,183 :: 		}
L_animation_forward30:
;Lab8.c,184 :: 		if(team==8)  // check which image
	MOVF        _team+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_forward31
;Lab8.c,186 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,187 :: 		Glcd_PartialImage(x,0,128,64,128,64,denizlispor); // denizlispor
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _denizlispor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_denizlispor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_denizlispor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,188 :: 		}
L_animation_forward31:
;Lab8.c,189 :: 		if(team==9)  // check which image
	MOVF        _team+0, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_forward32
;Lab8.c,191 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,192 :: 		Glcd_PartialImage(x,0,128,64,128,64,goztepe); // goztepe
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _goztepe+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_goztepe+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_goztepe+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,193 :: 		}
L_animation_forward32:
;Lab8.c,194 :: 		if(team==1)  // check which image
	MOVF        _team+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_forward33
;Lab8.c,196 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,197 :: 		fenerbahce_Animation_forward();           // fenerbahce
	CALL        _fenerbahce_Animation_forward+0, 0
;Lab8.c,198 :: 		}
L_animation_forward33:
;Lab8.c,199 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_animation_forward34:
	DECFSZ      R13, 1, 1
	BRA         L_animation_forward34
	DECFSZ      R12, 1, 1
	BRA         L_animation_forward34
	DECFSZ      R11, 1, 1
	BRA         L_animation_forward34
	NOP
;Lab8.c,200 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,201 :: 		y=x;  // x for forward and y for reverse
	MOVF        _x+0, 0 
	MOVWF       _y+0 
;Lab8.c,202 :: 		if(x==120) // to check is image is out of the screen
	MOVF        _x+0, 0 
	XORLW       120
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_forward35
;Lab8.c,204 :: 		x=0;
	CLRF        _x+0 
;Lab8.c,205 :: 		}
L_animation_forward35:
;Lab8.c,206 :: 		if(breakFlag == 1) break; // Check if there is interrupt
	BTFSS       _breakFlag+0, BitPos(_breakFlag+0) 
	GOTO        L_animation_forward36
	GOTO        L_animation_forward23
L_animation_forward36:
;Lab8.c,152 :: 		for(x=x;x<=120; x=x+2) //loop for move image
	MOVLW       2
	ADDWF       _x+0, 1 
;Lab8.c,207 :: 		}
	GOTO        L_animation_forward22
L_animation_forward23:
;Lab8.c,208 :: 		}
L_end_animation_forward:
	RETURN      0
; end of _animation_forward

_animation_backward:

;Lab8.c,209 :: 		animation_backward()
;Lab8.c,211 :: 		for(y=y;y>=2; y=y-2) //loop for move image
L_animation_backward37:
	MOVLW       2
	SUBWF       _y+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_animation_backward38
;Lab8.c,213 :: 		if(team==2)  // check which image
	MOVF        _team+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_backward40
;Lab8.c,215 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,216 :: 		Glcd_PartialImage(y,0,128,64,128,64,besiktas); // besiktas
	MOVF        _y+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _besiktas+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_besiktas+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_besiktas+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,217 :: 		}
L_animation_backward40:
;Lab8.c,218 :: 		if(team==3)  // check which image
	MOVF        _team+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_backward41
;Lab8.c,220 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,221 :: 		Glcd_PartialImage(y,0,128,64,128,64,galatasaray); // galatasaray
	MOVF        _y+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _galatasaray+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_galatasaray+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_galatasaray+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,222 :: 		}
L_animation_backward41:
;Lab8.c,223 :: 		if(team==4)  // check which image
	MOVF        _team+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_backward42
;Lab8.c,225 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,226 :: 		Glcd_PartialImage(y,0,128,64,128,64,basaksehir); // basaksehir
	MOVF        _y+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _basaksehir+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_basaksehir+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_basaksehir+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,227 :: 		}
L_animation_backward42:
;Lab8.c,228 :: 		if(team==5)  // check which image
	MOVF        _team+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_backward43
;Lab8.c,230 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,231 :: 		Glcd_PartialImage(y,0,128,64,128,64,bursaspor); // bursaspor
	MOVF        _y+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _bursaspor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_bursaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_bursaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,232 :: 		}
L_animation_backward43:
;Lab8.c,233 :: 		if(team==6)  // check which image
	MOVF        _team+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_backward44
;Lab8.c,235 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,236 :: 		Glcd_PartialImage(y,0,128,64,128,64,trabzonspor); // trabzonspor
	MOVF        _y+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _trabzonspor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_trabzonspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_trabzonspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,237 :: 		}
L_animation_backward44:
;Lab8.c,238 :: 		if(team==7)  // check which image
	MOVF        _team+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_backward45
;Lab8.c,240 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,241 :: 		Glcd_PartialImage(y,0,128,64,128,64,alanyaspor); // alanyaspor
	MOVF        _y+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _alanyaspor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_alanyaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_alanyaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,242 :: 		}
L_animation_backward45:
;Lab8.c,243 :: 		if(team==8)  // check which image
	MOVF        _team+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_backward46
;Lab8.c,245 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,246 :: 		Glcd_PartialImage(y,0,128,64,128,64,denizlispor); // denizlispor
	MOVF        _y+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _denizlispor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_denizlispor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_denizlispor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,247 :: 		}
L_animation_backward46:
;Lab8.c,248 :: 		if(team==9)  // check which image
	MOVF        _team+0, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_backward47
;Lab8.c,250 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,251 :: 		Glcd_PartialImage(y,0,128,64,128,64,goztepe); // goztepe
	MOVF        _y+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _goztepe+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_goztepe+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_goztepe+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,252 :: 		}
L_animation_backward47:
;Lab8.c,253 :: 		if(team==1)  // check which image
	MOVF        _team+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_backward48
;Lab8.c,255 :: 		Glcd_Fill(0x00); // clear
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,256 :: 		fenerbahce_Animation_Reverse();             // fenerbahce
	CALL        _fenerbahce_Animation_Reverse+0, 0
;Lab8.c,257 :: 		}
L_animation_backward48:
;Lab8.c,258 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_animation_backward49:
	DECFSZ      R13, 1, 1
	BRA         L_animation_backward49
	DECFSZ      R12, 1, 1
	BRA         L_animation_backward49
	DECFSZ      R11, 1, 1
	BRA         L_animation_backward49
	NOP
;Lab8.c,259 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,260 :: 		x=y;  // x for forward and y for reverse
	MOVF        _y+0, 0 
	MOVWF       _x+0 
;Lab8.c,261 :: 		if(y<=2) // to check is image is out of the screen
	MOVF        _y+0, 0 
	SUBLW       2
	BTFSS       STATUS+0, 0 
	GOTO        L_animation_backward50
;Lab8.c,263 :: 		y=120;
	MOVLW       120
	MOVWF       _y+0 
;Lab8.c,264 :: 		}
L_animation_backward50:
;Lab8.c,265 :: 		if(breakFlag == 1) break; // Check if there is interrupt
	BTFSS       _breakFlag+0, BitPos(_breakFlag+0) 
	GOTO        L_animation_backward51
	GOTO        L_animation_backward38
L_animation_backward51:
;Lab8.c,211 :: 		for(y=y;y>=2; y=y-2) //loop for move image
	MOVLW       2
	SUBWF       _y+0, 1 
;Lab8.c,266 :: 		}
	GOTO        L_animation_backward37
L_animation_backward38:
;Lab8.c,267 :: 		}
L_end_animation_backward:
	RETURN      0
; end of _animation_backward

_animation_pause:

;Lab8.c,269 :: 		animation_pause()
;Lab8.c,271 :: 		if(team==2)  // check which image
	MOVF        _team+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_pause52
;Lab8.c,273 :: 		Glcd_PartialImage(x,0,128,64,128,64,besiktas); // besiktas
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _besiktas+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_besiktas+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_besiktas+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,274 :: 		}
L_animation_pause52:
;Lab8.c,275 :: 		if(team==3)  // check which image
	MOVF        _team+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_pause53
;Lab8.c,277 :: 		Glcd_PartialImage(x,0,128,64,128,64,galatasaray); // galatasaray
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _galatasaray+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_galatasaray+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_galatasaray+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,278 :: 		}
L_animation_pause53:
;Lab8.c,279 :: 		if(team==4)  // check which image
	MOVF        _team+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_pause54
;Lab8.c,281 :: 		Glcd_PartialImage(x,0,128,64,128,64,basaksehir); // basaksehir
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _basaksehir+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_basaksehir+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_basaksehir+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,282 :: 		}
L_animation_pause54:
;Lab8.c,283 :: 		if(team==5)  // check which image
	MOVF        _team+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_pause55
;Lab8.c,285 :: 		Glcd_PartialImage(x,0,128,64,128,64,bursaspor); // bursaspor
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _bursaspor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_bursaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_bursaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,286 :: 		}
L_animation_pause55:
;Lab8.c,287 :: 		if(team==6)  // check which image
	MOVF        _team+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_pause56
;Lab8.c,289 :: 		Glcd_PartialImage(x,0,128,64,128,64,trabzonspor); // trabzonspor
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _trabzonspor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_trabzonspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_trabzonspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,290 :: 		}
L_animation_pause56:
;Lab8.c,291 :: 		if(team==7)  // check which image
	MOVF        _team+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_pause57
;Lab8.c,293 :: 		Glcd_PartialImage(x,0,128,64,128,64,alanyaspor); // alanyaspor
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _alanyaspor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_alanyaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_alanyaspor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,294 :: 		}
L_animation_pause57:
;Lab8.c,295 :: 		if(team==8)  // check which image
	MOVF        _team+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_pause58
;Lab8.c,297 :: 		Glcd_PartialImage(x,0,128,64,128,64,denizlispor); // denizlispor
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _denizlispor+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_denizlispor+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_denizlispor+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,298 :: 		}
L_animation_pause58:
;Lab8.c,299 :: 		if(team==9)  // check which image
	MOVF        _team+0, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_pause59
;Lab8.c,301 :: 		Glcd_PartialImage(x,0,128,64,128,64,goztepe); // goztepe
	MOVF        _x+0, 0 
	MOVWF       FARG_Glcd_PartialImage_x_left+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_x_left+1 
	CLRF        FARG_Glcd_PartialImage_y_top+0 
	CLRF        FARG_Glcd_PartialImage_y_top+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_height+1 
	MOVLW       128
	MOVWF       FARG_Glcd_PartialImage_picture_width+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_width+1 
	MOVLW       64
	MOVWF       FARG_Glcd_PartialImage_picture_height+0 
	MOVLW       0
	MOVWF       FARG_Glcd_PartialImage_picture_height+1 
	MOVLW       _goztepe+0
	MOVWF       FARG_Glcd_PartialImage_image+0 
	MOVLW       hi_addr(_goztepe+0)
	MOVWF       FARG_Glcd_PartialImage_image+1 
	MOVLW       higher_addr(_goztepe+0)
	MOVWF       FARG_Glcd_PartialImage_image+2 
	CALL        _Glcd_PartialImage+0, 0
;Lab8.c,302 :: 		}
L_animation_pause59:
;Lab8.c,303 :: 		if(team==1)  // check which image
	MOVF        _team+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_animation_pause60
;Lab8.c,305 :: 		Glcd_Image(fenerbahce);  // display fenerbahce
	MOVLW       _fenerbahce+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_fenerbahce+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_fenerbahce+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;Lab8.c,306 :: 		}
L_animation_pause60:
;Lab8.c,307 :: 		check_Keypad();
	CALL        _check_Keypad+0, 0
;Lab8.c,308 :: 		}
L_end_animation_pause:
	RETURN      0
; end of _animation_pause

_interrupt:

;Lab8.c,310 :: 		void interrupt()
;Lab8.c,313 :: 		if(INT0F_bit==1) // check for int0 Flag bit
	BTFSS       INT0F_bit+0, BitPos(INT0F_bit+0) 
	GOTO        L_interrupt61
;Lab8.c,315 :: 		flag = 1;
	MOVLW       1
	MOVWF       _flag+0 
;Lab8.c,316 :: 		breakFlag =~ breakFlag;
	BTG         _breakFlag+0, BitPos(_breakFlag+0) 
;Lab8.c,317 :: 		}
	GOTO        L_interrupt62
L_interrupt61:
;Lab8.c,319 :: 		else if(INT1F_bit==1) // check for int1 Flag bit
	BTFSS       INT1F_bit+0, BitPos(INT1F_bit+0) 
	GOTO        L_interrupt63
;Lab8.c,321 :: 		flag = 2;
	MOVLW       2
	MOVWF       _flag+0 
;Lab8.c,322 :: 		breakFlag =~ breakFlag;
	BTG         _breakFlag+0, BitPos(_breakFlag+0) 
;Lab8.c,323 :: 		}
	GOTO        L_interrupt64
L_interrupt63:
;Lab8.c,325 :: 		else if(INT2F_bit==1) // check for int2 Flag bit
	BTFSS       INT2F_bit+0, BitPos(INT2F_bit+0) 
	GOTO        L_interrupt65
;Lab8.c,327 :: 		flag = 3;
	MOVLW       3
	MOVWF       _flag+0 
;Lab8.c,328 :: 		breakFlag =~ breakFlag;
	BTG         _breakFlag+0, BitPos(_breakFlag+0) 
;Lab8.c,329 :: 		}
L_interrupt65:
L_interrupt64:
L_interrupt62:
;Lab8.c,330 :: 		INT0F_bit=0;
	BCF         INT0F_bit+0, BitPos(INT0F_bit+0) 
;Lab8.c,331 :: 		INT1F_bit=0;
	BCF         INT1F_bit+0, BitPos(INT1F_bit+0) 
;Lab8.c,332 :: 		INT2F_bit=0;
	BCF         INT2F_bit+0, BitPos(INT2F_bit+0) 
;Lab8.c,333 :: 		}
L_end_interrupt:
L__interrupt79:
	RETFIE      1
; end of _interrupt

_main:

;Lab8.c,335 :: 		void main() {
;Lab8.c,337 :: 		ANSELB=0;
	CLRF        ANSELB+0 
;Lab8.c,338 :: 		ANSELD=0;
	CLRF        ANSELD+0 
;Lab8.c,339 :: 		ANSELB=0;
	CLRF        ANSELB+0 
;Lab8.c,340 :: 		ANSELD=0;
	CLRF        ANSELD+0 
;Lab8.c,342 :: 		flag=1;
	MOVLW       1
	MOVWF       _flag+0 
;Lab8.c,343 :: 		breakFlag=0;
	BCF         _breakFlag+0, BitPos(_breakFlag+0) 
;Lab8.c,345 :: 		INTEDG0_bit = 1;  // Set Interrupt on rising edge
	BSF         INTEDG0_bit+0, BitPos(INTEDG0_bit+0) 
;Lab8.c,346 :: 		INT0IF_bit = 0;   // Clear INT0 flag
	BCF         INT0IF_bit+0, BitPos(INT0IF_bit+0) 
;Lab8.c,347 :: 		INT0IE_bit = 1;   // Enable INT0 interrupt
	BSF         INT0IE_bit+0, BitPos(INT0IE_bit+0) 
;Lab8.c,349 :: 		INTEDG1_bit = 1;  // Set Interrupt on rising edge
	BSF         INTEDG1_bit+0, BitPos(INTEDG1_bit+0) 
;Lab8.c,350 :: 		INT1IF_bit = 0;   // Clear INT0 flag
	BCF         INT1IF_bit+0, BitPos(INT1IF_bit+0) 
;Lab8.c,351 :: 		INT1IE_bit = 1;   // Enable INT0 interrupt
	BSF         INT1IE_bit+0, BitPos(INT1IE_bit+0) 
;Lab8.c,353 :: 		INTEDG2_bit = 1;  // Set Interrupt on rising edge
	BSF         INTEDG2_bit+0, BitPos(INTEDG2_bit+0) 
;Lab8.c,354 :: 		INT2IF_bit = 0;   // Clear INT0 flag
	BCF         INT2IF_bit+0, BitPos(INT2IF_bit+0) 
;Lab8.c,355 :: 		INT2IE_bit = 1;   // Enable INT0 interrupt
	BSF         INT2IE_bit+0, BitPos(INT2IE_bit+0) 
;Lab8.c,356 :: 		GIE_bit = 1; // enable Global interrupt
	BSF         GIE_bit+0, BitPos(GIE_bit+0) 
;Lab8.c,357 :: 		Keypad_Init(); // Start Keypad
	CALL        _Keypad_Init+0, 0
;Lab8.c,358 :: 		Glcd_Init();   // Start glcd
	CALL        _Glcd_Init+0, 0
;Lab8.c,359 :: 		Glcd_Fill(0x00); // clear glcd
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,360 :: 		team=0;
	CLRF        _team+0 
;Lab8.c,361 :: 		Glcd_Write_Text_Adv("Assignment Name:",0,0); // Write text
	MOVLW       ?lstr21_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr21_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	CLRF        FARG_Glcd_Write_Text_Adv_x+0 
	CLRF        FARG_Glcd_Write_Text_Adv_x+1 
	CLRF        FARG_Glcd_Write_Text_Adv_y+0 
	CLRF        FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,362 :: 		Glcd_Write_Text_Adv("Turkish Super League",0,10); // Write text
	MOVLW       ?lstr22_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr22_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	CLRF        FARG_Glcd_Write_Text_Adv_x+0 
	CLRF        FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       10
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,363 :: 		Glcd_Write_Text_Adv("Name: Turhan Can Kargin",0,30); // Write text
	MOVLW       ?lstr23_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr23_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	CLRF        FARG_Glcd_Write_Text_Adv_x+0 
	CLRF        FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       30
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,364 :: 		Glcd_Write_Text_Adv("Student Number: 150403005",0,40); // Write text
	MOVLW       ?lstr24_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr24_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	CLRF        FARG_Glcd_Write_Text_Adv_x+0 
	CLRF        FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       40
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,365 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main66:
	DECFSZ      R13, 1, 1
	BRA         L_main66
	DECFSZ      R12, 1, 1
	BRA         L_main66
	DECFSZ      R11, 1, 1
	BRA         L_main66
	NOP
	NOP
;Lab8.c,366 :: 		Glcd_Fill(0x00); // clear glcd
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Lab8.c,367 :: 		Glcd_Write_Text_Adv("Please Press any",0,0); // Write text
	MOVLW       ?lstr25_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr25_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	CLRF        FARG_Glcd_Write_Text_Adv_x+0 
	CLRF        FARG_Glcd_Write_Text_Adv_x+1 
	CLRF        FARG_Glcd_Write_Text_Adv_y+0 
	CLRF        FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,368 :: 		Glcd_Write_Text_Adv("Button on Keypad",0,10); // Write text
	MOVLW       ?lstr26_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr26_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	CLRF        FARG_Glcd_Write_Text_Adv_x+0 
	CLRF        FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       10
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,369 :: 		Glcd_Write_Text_Adv("to see Your Super",0,20); // Write text
	MOVLW       ?lstr27_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr27_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	CLRF        FARG_Glcd_Write_Text_Adv_x+0 
	CLRF        FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       20
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,370 :: 		Glcd_Write_Text_Adv("League Team",0,30); // Write text
	MOVLW       ?lstr28_Lab8+0
	MOVWF       FARG_Glcd_Write_Text_Adv_text+0 
	MOVLW       hi_addr(?lstr28_Lab8+0)
	MOVWF       FARG_Glcd_Write_Text_Adv_text+1 
	CLRF        FARG_Glcd_Write_Text_Adv_x+0 
	CLRF        FARG_Glcd_Write_Text_Adv_x+1 
	MOVLW       30
	MOVWF       FARG_Glcd_Write_Text_Adv_y+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Write_Text_Adv_y+1 
	CALL        _Glcd_Write_Text_Adv+0, 0
;Lab8.c,372 :: 		while(1){
L_main67:
;Lab8.c,373 :: 		if(flag==1) // check if INT0
	MOVF        _flag+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main69
;Lab8.c,375 :: 		animation_forward(); // forward
	CALL        _animation_forward+0, 0
;Lab8.c,376 :: 		}
L_main69:
;Lab8.c,377 :: 		if(flag==2) // check if INT1
	MOVF        _flag+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main70
;Lab8.c,379 :: 		animation_backward(); // backward
	CALL        _animation_backward+0, 0
;Lab8.c,380 :: 		}
L_main70:
;Lab8.c,381 :: 		if(flag==3) // check if INT2
	MOVF        _flag+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_main71
;Lab8.c,383 :: 		animation_pause(); // pause
	CALL        _animation_pause+0, 0
;Lab8.c,384 :: 		}
L_main71:
;Lab8.c,385 :: 		}
	GOTO        L_main67
;Lab8.c,386 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
