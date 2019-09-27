	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToMenu
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMenu, %function
goToMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+4
	mov	r3, #1
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	ldr	r0, .L4+16
	mov	lr, pc
	bx	r4
	ldr	r4, .L4+20
	mov	r3, #512
	mov	r2, #83886080
	ldr	r1, .L4+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2560
	mov	r2, #100663296
	ldr	r1, .L4+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #6656
	mov	ip, #256
	ldr	r1, .L4+40
	strh	r2, [r3, #18]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r0, [r3, #8]	@ movhi
	str	r2, [r1]
	bx	lr
.L5:
	.align	2
.L4:
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	132068
	.word	menuSong
	.word	DMANow
	.word	menuPal
	.word	menuTiles
	.word	100716544
	.word	menuMap
	.word	state
	.size	goToMenu, .-goToMenu
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r3, #0
	strh	r3, [r4]	@ movhi
	bl	goToMenu
	ldr	r5, .L8+8
	mov	r3, #16384
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #256
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L8+28
	mov	lr, pc
	bx	r3
	mov	r3, #256
	strh	r3, [r4]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	setupSounds
	.word	setupInterrupts
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause.part.4, %function
pause.part.4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToMenu
.L13:
	.align	2
.L12:
	.word	buttons
	.size	pause.part.4, .-pause.part.4
	.set	win.part.5,pause.part.4
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L16
	mov	r2, #83886080
	ldr	r1, .L16+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+8
	mov	r2, #100663296
	ldr	r1, .L16+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	ip, #7936
	mov	r0, #1
	ldr	r1, .L16+24
	strh	r2, [r3, #18]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	str	r0, [r1]
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	instructionsPal
	.word	5536
	.word	instructionsTiles
	.word	100726784
	.word	instructionsMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToLevel1Screen
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel1Screen, %function
goToLevel1Screen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L20
	mov	r2, #83886080
	ldr	r1, .L20+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2176
	mov	r2, #100663296
	ldr	r1, .L20+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L20+12
	ldr	r1, .L20+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	ip, #7936
	mov	r0, #2
	ldr	r1, .L20+20
	strh	r2, [r3, #18]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	str	r0, [r1]
	bx	lr
.L21:
	.align	2
.L20:
	.word	DMANow
	.word	level1ScreenPal
	.word	level1ScreenTiles
	.word	100726784
	.word	level1ScreenMap
	.word	state
	.size	goToLevel1Screen, .-goToLevel1Screen
	.align	2
	.global	goToLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel1, %function
goToLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L24
	ldr	r2, .L24+4
	ldr	r1, .L24+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #5632
	mov	r3, #256
	strh	r2, [r5]	@ movhi
	ldr	r1, .L24+12
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #0
	mov	r1, #7936
	ldr	r2, .L24+16
	mov	r3, #800
	str	r0, [r2]
	strh	r1, [r5, #10]	@ movhi
	mov	r2, #100663296
	ldr	r1, .L24+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L24+24
	ldr	r1, .L24+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L24+32
	mov	r3, #320
	strh	r2, [r5, #12]	@ movhi
	ldr	r1, .L24+36
	ldr	r2, .L24+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L24+44
	ldr	r1, .L24+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L24+52
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	level2Pal
	.word	hOff
	.word	level1Tiles
	.word	100726784
	.word	level1Map
	.word	23812
	.word	brickWallTiles
	.word	100679680
	.word	100722688
	.word	brickWallMap
	.word	state
	.size	goToLevel1, .-goToLevel1
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	level1Screen.part.2, %function
level1Screen.part.2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L31
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L31+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel1
.L32:
	.align	2
.L31:
	.word	buttons
	.word	initLevel1
	.size	level1Screen.part.2, .-level1Screen.part.2
	.set	lose.part.6,level1Screen.part.2
	.align	2
	.global	goToLevel2Screen
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel2Screen, %function
goToLevel2Screen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	mov	r4, #67108864
	ldr	r5, .L35
	strh	r3, [r4]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L35+4
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2080
	mov	r2, #100663296
	ldr	r1, .L35+8
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L35+12
	ldr	r1, .L35+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r0, #7936
	mov	r1, #4
	ldr	r2, .L35+20
	strh	r3, [r4, #18]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r0, [r4, #8]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	DMANow
	.word	level2ScreenPal
	.word	level2ScreenTiles
	.word	100726784
	.word	level2ScreenMap
	.word	state
	.size	goToLevel2Screen, .-goToLevel2Screen
	.align	2
	.global	goToLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel2, %function
goToLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L39
	ldr	r2, .L39+4
	ldr	r1, .L39+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #5632
	mov	r3, #256
	strh	r2, [r5]	@ movhi
	ldr	r1, .L39+12
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #0
	mov	r1, #7936
	ldr	r2, .L39+16
	mov	r3, #128
	str	r0, [r2]
	strh	r1, [r5, #10]	@ movhi
	mov	r2, #100663296
	ldr	r1, .L39+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L39+24
	ldr	r1, .L39+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L39+32
	mov	r3, #320
	strh	r2, [r5, #12]	@ movhi
	ldr	r1, .L39+36
	ldr	r2, .L39+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L39+44
	ldr	r1, .L39+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L39+52
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L40:
	.align	2
.L39:
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	level2Pal
	.word	hOff
	.word	level2Tiles
	.word	100726784
	.word	level2Map
	.word	23812
	.word	brickWallTiles
	.word	100679680
	.word	100722688
	.word	brickWallMap
	.word	state
	.size	goToLevel2, .-goToLevel2
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	level2Screen.part.3, %function
level2Screen.part.3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L46
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L46+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel2
.L47:
	.align	2
.L46:
	.word	buttons
	.word	initLevel2
	.size	level2Screen.part.3, .-level2Screen.part.3
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L50
	mov	lr, pc
	bx	r3
	ldr	r4, .L50+4
	mov	r3, #512
	mov	r2, #83886080
	ldr	r1, .L50+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+12
	mov	r2, #100663296
	ldr	r1, .L50+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L50+20
	ldr	r1, .L50+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	lr, #256
	mov	ip, #7168
	mov	r0, #6
	ldr	r1, .L50+28
	strh	r2, [r3, #18]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	ip, [r3, #8]	@ movhi
	str	r0, [r1]
	bx	lr
.L51:
	.align	2
.L50:
	.word	hideSprites
	.word	DMANow
	.word	pausePal
	.word	7328
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #512
	ldr	r4, .L54
	mov	r2, #83886080
	ldr	r1, .L54+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2752
	mov	r2, #100663296
	ldr	r1, .L54+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L54+12
	ldr	r1, .L54+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	lr, #256
	mov	ip, #7168
	mov	r0, #7
	ldr	r1, .L54+20
	strh	r2, [r3, #18]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	ip, [r3, #8]	@ movhi
	str	r0, [r1]
	bx	lr
.L55:
	.align	2
.L54:
	.word	DMANow
	.word	winPal
	.word	winTiles
	.word	100720640
	.word	winMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #512
	ldr	r4, .L58
	mov	r2, #83886080
	ldr	r1, .L58+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+8
	mov	r2, #100663296
	ldr	r1, .L58+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L58+16
	ldr	r1, .L58+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	lr, #256
	mov	ip, #7424
	mov	r0, #8
	ldr	r1, .L58+24
	strh	r2, [r3, #18]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	ip, [r3, #8]	@ movhi
	str	r0, [r1]
	bx	lr
.L59:
	.align	2
.L58:
	.word	DMANow
	.word	losePal
	.word	7504
	.word	loseTiles
	.word	100722688
	.word	loseMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	menu
	.syntax unified
	.arm
	.fpu softvfp
	.type	menu, %function
menu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L72
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L61
	ldr	r2, .L72+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L70
.L61:
	tst	r3, #4
	beq	.L60
	ldr	r3, .L72+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L71
.L60:
	pop	{r4, lr}
	bx	lr
.L71:
	pop	{r4, lr}
	b	goToInstructions
.L70:
	bl	goToLevel1Screen
	ldrh	r3, [r4]
	b	.L61
.L73:
	.align	2
.L72:
	.word	oldButtons
	.word	buttons
	.size	menu, .-menu
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L79
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L79+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToLevel1Screen
.L80:
	.align	2
.L79:
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	level1Screen
	.syntax unified
	.arm
	.fpu softvfp
	.type	level1Screen, %function
level1Screen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L83
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	level1Screen.part.2
.L84:
	.align	2
.L83:
	.word	oldButtons
	.size	level1Screen, .-level1Screen
	.align	2
	.global	level1
	.syntax unified
	.arm
	.fpu softvfp
	.type	level1, %function
level1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L99
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L99+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
	ldr	r3, .L99+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L96
.L86:
	ldr	r3, .L99+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L97
	ldr	r3, .L99+24
	ldr	r3, [r3, #52]
	cmp	r3, #0
	ble	.L98
.L85:
	pop	{r4, lr}
	bx	lr
.L97:
	bl	goToLevel2Screen
	ldr	r3, .L99+24
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bgt	.L85
.L98:
	pop	{r4, lr}
	b	goToLose
.L96:
	ldr	r3, .L99+28
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L86
.L100:
	.align	2
.L99:
	.word	updateLevel1
	.word	waitForVBlank
	.word	drawLevel1
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	player
	.word	pauseSound
	.size	level1, .-level1
	.align	2
	.global	level2Screen
	.syntax unified
	.arm
	.fpu softvfp
	.type	level2Screen, %function
level2Screen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L103
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	level2Screen.part.3
.L104:
	.align	2
.L103:
	.word	oldButtons
	.size	level2Screen, .-level2Screen
	.align	2
	.global	level2
	.syntax unified
	.arm
	.fpu softvfp
	.type	level2, %function
level2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L119
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L106
	ldr	r3, .L119+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L116
.L106:
	ldr	r3, .L119+20
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L117
	ldr	r3, .L119+24
	ldr	r3, [r3, #52]
	cmp	r3, #0
	ble	.L118
.L105:
	pop	{r4, lr}
	bx	lr
.L117:
	bl	goToWin
	ldr	r3, .L119+24
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bgt	.L105
.L118:
	pop	{r4, lr}
	b	goToLose
.L116:
	ldr	r3, .L119+28
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L106
.L120:
	.align	2
.L119:
	.word	updateLevel2
	.word	waitForVBlank
	.word	drawLevel2
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	player
	.word	pauseSound
	.size	level2, .-level2
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L145
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L122
	ldr	r5, .L145+4
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L143
.L142:
	ldrh	r3, [r4]
.L122:
	tst	r3, #4
	beq	.L121
	pop	{r4, r5, r6, lr}
	b	pause.part.4
.L143:
	ldr	r6, .L145+8
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bne	.L144
.L124:
	ldr	r3, [r6, #12]
	cmp	r3, #0
	beq	.L142
	ldr	r3, .L145+12
	mov	lr, pc
	bx	r3
	bl	goToLevel2
	b	.L142
.L121:
	pop	{r4, r5, r6, lr}
	bx	lr
.L144:
	ldr	r3, .L145+12
	mov	lr, pc
	bx	r3
	bl	goToLevel1
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L122
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L124
	b	.L142
.L146:
	.align	2
.L145:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L149
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	b	win.part.5
.L150:
	.align	2
.L149:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L159
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L152
	ldr	r2, .L159+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L158
.L152:
	tst	r3, #8
	popne	{r4, lr}
	bne	lose.part.6
.L151:
	pop	{r4, lr}
	bx	lr
.L158:
	bl	goToMenu
	ldrh	r3, [r4]
	b	.L152
.L160:
	.align	2
.L159:
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L187
	mov	lr, pc
	bx	r3
	ldr	r6, .L187+4
	ldr	r5, .L187+8
	ldr	fp, .L187+12
	ldr	r10, .L187+16
	ldr	r9, .L187+20
	ldr	r8, .L187+24
	ldr	r7, .L187+28
	ldr	r4, .L187+32
.L162:
	ldrh	r1, [r6]
	strh	r1, [r5]	@ movhi
	ldr	r2, [fp]
	ldrh	r3, [r4, #48]
	strh	r3, [r6]	@ movhi
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L162
.L165:
	.word	.L164
	.word	.L166
	.word	.L167
	.word	.L168
	.word	.L169
	.word	.L170
	.word	.L171
	.word	.L172
	.word	.L173
.L173:
	ldr	r3, .L187+36
	mov	lr, pc
	bx	r3
	b	.L162
.L172:
	tst	r1, #4
	beq	.L162
	ldr	r3, .L187+40
	mov	lr, pc
	bx	r3
	b	.L162
.L171:
	mov	lr, pc
	bx	r7
	b	.L162
.L170:
	mov	lr, pc
	bx	r8
	b	.L162
.L169:
	tst	r1, #8
	beq	.L162
	ldr	r3, .L187+44
	mov	lr, pc
	bx	r3
	b	.L162
.L168:
	mov	lr, pc
	bx	r9
	b	.L162
.L166:
	tst	r1, #8
	beq	.L162
	tst	r3, #8
	bne	.L162
	ldr	r3, .L187+48
	mov	lr, pc
	bx	r3
	b	.L162
.L164:
	mov	lr, pc
	bx	r10
	b	.L162
.L167:
	tst	r1, #8
	beq	.L162
	ldr	r3, .L187+52
	mov	lr, pc
	bx	r3
	b	.L162
.L188:
	.align	2
.L187:
	.word	initialize
	.word	buttons
	.word	oldButtons
	.word	state
	.word	menu
	.word	level1
	.word	level2
	.word	pause
	.word	67109120
	.word	lose
	.word	win.part.5
	.word	level2Screen.part.3
	.word	goToLevel1Screen
	.word	level1Screen.part.2
	.size	main, .-main
	.global	inLevel2
	.global	inLevel1
	.global	winGame
	.global	winLevel1
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	winLevel1, %object
	.size	winLevel1, 4
winLevel1:
	.space	4
	.type	winGame, %object
	.size	winGame, 4
winGame:
	.space	4
	.type	inLevel1, %object
	.size	inLevel1, 4
inLevel1:
	.space	4
	.type	inLevel2, %object
	.size	inLevel2, 4
inLevel2:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
