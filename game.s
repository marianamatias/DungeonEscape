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
	.file	"game.c"
	.text
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #212
	mov	r2, #0
	mov	lr, #16
	mov	r6, #1
	mov	r5, #2
	ldr	r3, .L4
	ldr	ip, .L4+4
	ldr	r0, [r3]
	ldr	ip, [ip]
	add	r1, r0, #91
	ldr	r3, .L4+8
	lsl	r1, r1, #8
	add	ip, ip, r4
	rsb	r0, r0, r1, asr #8
	str	r6, [r3, #20]
	str	r5, [r3, #48]
	str	r4, [r3, #4]
	str	lr, [r3, #24]
	str	lr, [r3, #28]
	str	r0, [r3]
	str	r1, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	vOff
	.word	hOff
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L13
	ldr	r2, [r3, #64]
	cmp	r2, #0
	movne	r2, #3
	strne	r2, [r3, #44]
	ldr	r2, [r3, #32]
	cmp	r2, #9
	movgt	r1, #0
	movgt	r2, #1
	addle	r2, r2, #1
	strgt	r1, [r3, #44]
	strgt	r1, [r3, #64]
	str	r2, [r3, #32]
	bx	lr
.L14:
	.align	2
.L13:
	.word	player
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L22
	ldr	r3, [r2, #56]
	cmp	r3, #0
	bne	.L21
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r1, [r2, #36]
	ldr	lr, [r2, #44]
	lsl	r3, r3, #23
	ldr	r0, .L22+4
	ldrb	ip, [r2]	@ zero_extendqisi2
	lsr	r3, r3, #23
	add	r2, r1, lr, lsl #5
	orr	r3, r3, #16384
	lsl	r2, r2, #1
	strh	r3, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L21:
	ldr	r2, .L22+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L23:
	.align	2
.L22:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initObject
	.syntax unified
	.arm
	.fpu softvfp
	.type	initObject, %function
initObject:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r1, #8
	mov	r6, #127
	mov	r5, #6
	mov	r2, #1
	mov	r9, #16
	mov	r4, #27
	mov	lr, #177
	mov	r8, #32
	mov	r7, #0
	mov	ip, #155
	mov	r0, #100
	ldr	r3, .L26
	str	r9, [r3, #16]
	str	r6, [r3]
	stmib	r3, {r5, r6}
	str	r5, [r3, #12]
	str	r2, [r3, #24]
	str	r1, [r3, #20]
	ldr	r3, .L26+4
	str	r2, [r3, #24]
	ldr	r2, .L26+8
	str	r1, [r3, #16]
	str	r8, [r2, #20]
	str	r7, [r2, #24]
	str	r4, [r2]
	str	r4, [r2, #8]
	str	lr, [r2, #4]
	str	lr, [r2, #12]
	str	r1, [r3, #20]
	str	r1, [r2, #16]
	str	ip, [r3]
	stmib	r3, {r0, ip}
	str	r0, [r3, #12]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	key
	.word	star
	.word	ladder
	.size	initObject, .-initObject
	.align	2
	.global	initLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel2, %function
initLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, #0
	mov	r8, #1
	mov	r2, #70
	ldr	r1, .L30
	ldr	r3, .L30+4
	str	r5, [r1]
	str	r5, [r3]
	ldr	r0, .L30+8
	ldr	r1, .L30+12
	ldr	r3, .L30+16
	str	r5, [r0]
	str	r5, [r1]
	ldr	r0, .L30+20
	ldr	r1, .L30+24
	str	r5, [r3]
	ldr	r3, .L30+28
	str	r5, [r0]
	str	r8, [r1]
	str	r2, [r3]
	bl	initPlayer
	mov	r3, #512
	ldr	r4, .L30+32
	strh	r3, [r4, #8]	@ movhi
	bl	initObject
	mov	r2, #4
	mov	r7, #292
	mov	r6, #16
	mov	lr, #12
	mov	ip, #183
	mov	r0, #205
	ldr	r1, .L30+36
	ldr	r3, .L30+40
	strh	r2, [r4, #20]	@ movhi
	ldrb	r2, [r1]	@ zero_extendqisi2
	str	r5, [r3, #32]
	str	r8, [r3, #24]
	ldr	r5, .L30+44
	str	r8, [r3, #28]
	ldr	r1, [r1, #4]
	ldr	r8, .L30+48
	orr	r2, r2, #16384
	and	r1, r1, r8
	strh	r2, [r4, #16]	@ movhi
	ldr	r2, [r5, #4]
	strh	r1, [r4, #18]	@ movhi
	ldrb	r1, [r5]	@ zero_extendqisi2
	and	r2, r2, r8
	strh	r2, [r4, #74]	@ movhi
	strh	r1, [r4, #72]	@ movhi
	strh	r7, [r4, #76]	@ movhi
	str	r6, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3]
	stmib	r3, {r0, ip}
	str	r0, [r3, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.word	inLevel1
	.word	vOff
	.word	hOff
	.word	winGame
	.word	winLevel1
	.word	inLevel2
	.word	grav
	.word	shadowOAM
	.word	key
	.word	enemy
	.word	star
	.word	511
	.size	initLevel2, .-initLevel2
	.align	2
	.global	updateObject
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateObject, %function
updateObject:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L34
	ldr	ip, .L34+4
	ldr	r0, .L34+8
	push	{r4, lr}
	ldr	r0, [r0]
	ldr	r4, [ip]
	ldr	lr, [r1, #12]
	ldr	ip, [r1, #8]
	ldr	r2, .L34+12
	ldr	r3, .L34+16
	sub	lr, lr, r0
	sub	ip, ip, r4
	str	lr, [r1, #4]
	str	ip, [r1]
	ldr	lr, [r2, #12]
	ldr	ip, [r3, #12]
	sub	lr, lr, r0
	sub	ip, ip, r0
	ldr	r1, [r3, #8]
	ldr	r0, [r2, #8]
	sub	r1, r1, r4
	sub	r0, r0, r4
	str	lr, [r2, #4]
	str	ip, [r3, #4]
	str	r0, [r2]
	str	r1, [r3]
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	key
	.word	vOff
	.word	hOff
	.word	ladder
	.word	star
	.size	updateObject, .-updateObject
	.align	2
	.global	drawKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKey, %function
drawKey:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #4
	ldr	r2, .L37
	ldr	r3, [r2, #4]
	ldrb	r1, [r2]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	r2, .L37+4
	lsr	r3, r3, #23
	orr	r1, r1, #16384
	strh	r3, [r2, #18]	@ movhi
	strh	r1, [r2, #16]	@ movhi
	strh	r0, [r2, #20]	@ movhi
	bx	lr
.L38:
	.align	2
.L37:
	.word	key
	.word	shadowOAM
	.size	drawKey, .-drawKey
	.align	2
	.global	drawLadder
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLadder, %function
drawLadder:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L40
	ldr	r3, [r2]
	sub	r3, r3, #32
	and	r3, r3, #255
	mvn	r3, r3, lsl #17
	mov	r0, #36
	mvn	r3, r3, lsr #17
	ldr	r2, [r2, #4]
	lsl	r2, r2, #23
	ldr	r1, .L40+4
	lsr	r2, r2, #23
	orr	r2, r2, #16384
	strh	r3, [r1, #32]	@ movhi
	strh	r2, [r1, #34]	@ movhi
	strh	r0, [r1, #36]	@ movhi
	bx	lr
.L41:
	.align	2
.L40:
	.word	ladder
	.word	shadowOAM
	.size	drawLadder, .-drawLadder
	.align	2
	.global	drawStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStar, %function
drawStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #292
	ldr	r2, .L43
	ldr	r3, [r2, #4]
	ldrb	r0, [r2]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	r2, .L43+4
	lsr	r3, r3, #23
	strh	r3, [r2, #74]	@ movhi
	strh	r0, [r2, #72]	@ movhi
	strh	r1, [r2, #76]	@ movhi
	bx	lr
.L44:
	.align	2
.L43:
	.word	star
	.word	shadowOAM
	.size	drawStar, .-drawStar
	.align	2
	.global	enemyCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	enemyCollision, %function
enemyCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L57
	ldr	r5, [r4, #60]
	cmp	r5, #0
	sub	sp, sp, #16
	bne	.L45
	ldr	ip, .L57+4
	ldr	r3, [ip, #24]
	cmp	r3, #0
	bne	.L56
.L45:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L56:
	ldr	lr, [ip, #16]
	ldr	r6, [ip, #20]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	ldm	r4, {r0, r1}
	str	lr, [sp, #12]
	ldm	ip, {ip, lr}
	str	r6, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r6, .L57+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L45
	mov	ip, #1
	ldr	r3, .L57+12
	ldr	r1, [r4, #16]
	ldr	r2, [r3]
	ldr	r0, [r4, #52]
	sub	r1, r1, r2
	sub	r0, r0, #1
	str	r1, [r4, #16]
	str	r0, [r4, #52]
	str	ip, [r4, #60]
	mov	r3, r5
	ldr	r2, .L57+16
	ldr	r1, .L57+20
	ldr	r0, .L57+24
	ldr	r4, .L57+28
	mov	lr, pc
	bx	r4
	b	.L45
.L58:
	.align	2
.L57:
	.word	player
	.word	enemy
	.word	collision
	.word	.LANCHOR1
	.word	11025
	.word	55125
	.word	collideSound
	.word	playSoundB
	.size	enemyCollision, .-enemyCollision
	.align	2
	.global	checkCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCollision, %function
checkCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L82
	ldr	r3, [r4, #24]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L60
.L79:
	ldr	r5, .L82+4
.L61:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L80
.L64:
	ldr	r4, .L82+8
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L81
.L59:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L81:
	ldr	lr, [r4, #16]
	ldr	r0, .L82+12
	ldr	ip, [r4, #20]
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldm	r0, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r5, .L82+16
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L59
	mov	r1, #0
	mov	lr, #1
	ldr	ip, .L82+20
	mov	r3, r1
	str	r1, [r4, #24]
	ldr	r2, .L82+24
	ldr	r1, .L82+28
	ldr	r0, .L82+32
	ldr	r4, .L82+36
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L80:
	ldr	ip, [r5]
	ldr	r0, .L82+12
	sub	ip, ip, #32
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r4, [r5, #16]
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	lr, [r5, #20]
	ldr	ip, [r5, #4]
	str	r4, [sp, #12]
	stmib	sp, {ip, lr}
	ldr	r4, .L82+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L64
	mov	r1, #1
	ldr	r2, .L82+40
	ldr	r3, .L82+44
	str	r1, [r2]
	ldr	r4, .L82+36
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L82+24
	ldr	r1, .L82+48
	ldr	r0, .L82+52
	mov	lr, pc
	bx	r4
	b	.L64
.L60:
	ldr	lr, [r4, #16]
	ldr	r0, .L82+12
	ldr	ip, [r4, #20]
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldm	r0, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r5, .L82+16
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L79
	mov	r0, #0
	mov	ip, #1
	ldr	r5, .L82+4
	mov	r3, r0
	str	r0, [r4, #24]
	ldr	r2, .L82+24
	ldr	r1, .L82+56
	ldr	r0, .L82+60
	ldr	r4, .L82+36
	str	ip, [r5, #24]
	mov	lr, pc
	bx	r4
	b	.L61
.L83:
	.align	2
.L82:
	.word	key
	.word	ladder
	.word	star
	.word	player
	.word	collision
	.word	.LANCHOR0
	.word	11025
	.word	7698
	.word	magic
	.word	playSoundB
	.word	winGame
	.word	stopSound
	.word	18202
	.word	winSound
	.word	9606
	.word	accept
	.size	checkCollision, .-checkCollision
	.align	2
	.global	jump
	.syntax unified
	.arm
	.fpu softvfp
	.type	jump, %function
jump:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #1
	ldr	r3, .L85
	ldr	r0, .L85+4
	ldr	r2, [r3, #16]
	ldr	r0, [r0]
	sub	r2, r2, r0
	str	r2, [r3, #16]
	str	r1, [r3, #60]
	bx	lr
.L86:
	.align	2
.L85:
	.word	player
	.word	.LANCHOR1
	.size	jump, .-jump
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #183
	mov	r4, #16
	mov	lr, #12
	mov	r1, #205
	mov	r2, #1
	mov	ip, #0
	ldr	r3, .L89
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #32]
	str	r0, [r3]
	str	r0, [r3, #8]
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	enemy
	.size	initEnemy, .-initEnemy
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L97
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L96
	ldr	r2, [r3, #32]
	cmp	r2, #0
	moveq	r1, #228
	beq	.L95
	cmp	r2, #1
	bxne	lr
	mov	r1, #230
.L95:
	ldr	r2, [r3, #4]
	lsl	r2, r2, #23
	ldrb	r0, [r3]	@ zero_extendqisi2
	lsr	r2, r2, #23
	ldr	r3, .L97+4
	orr	r2, r2, #16384
	strh	r2, [r3, #42]	@ movhi
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #44]	@ movhi
	bx	lr
.L96:
	ldr	r2, .L97+4
	ldrh	r3, [r2, #40]
	orr	r3, r3, #512
	strh	r3, [r2, #40]	@ movhi
	bx	lr
.L98:
	.align	2
.L97:
	.word	enemy
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L119
	push	{r4, r5, r6, lr}
	ldr	ip, [r3, #8]
	ldr	r0, [r3, #12]
	ldr	r5, [r3, #28]
	lsl	r4, ip, #8
	sub	r2, r0, r5
	add	r1, r4, r2
	ldr	lr, .L119+4
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	bne	.L100
	ldr	r1, [r3, #20]
	add	r1, ip, r1
	sub	r1, r1, #1
	add	r2, r2, r1, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	moveq	r1, r0
	bne	.L100
.L101:
	ldr	r2, [r3, #16]
	add	r0, r2, r1
	sub	r0, r0, #1
	add	r0, r0, r5
	add	r6, r4, r0
	lsl	r6, r6, #1
	ldrh	r6, [lr, r6]
	cmp	r6, #0
	bne	.L103
	ldr	r6, [r3, #20]
	add	r6, ip, r6
	sub	r6, r6, #1
	add	r0, r0, r6, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [lr, r0]
	cmp	r0, #0
	beq	.L104
.L103:
	add	r1, r1, r5
	add	r2, r2, r1
	sub	r2, r2, #1
	add	r2, r2, r5
	add	r4, r4, r2
	lsl	r4, r4, #1
	ldrh	r0, [lr, r4]
	cmp	r0, #0
	str	r1, [r3, #12]
	bne	.L117
.L105:
	mvn	r0, #0
	mov	r2, #1
	str	r0, [r3, #28]
	str	r2, [r3, #32]
.L104:
	ldr	r0, .L119+8
	ldr	r2, .L119+12
	ldr	r0, [r0]
	ldr	r2, [r2]
	sub	r1, r1, r0
	sub	ip, ip, r2
	str	r1, [r3, #4]
	str	ip, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	add	r2, r4, r0
	lsl	r2, r2, #1
	ldrh	r2, [lr, r2]
	add	r1, r0, r5
	cmp	r2, #0
	str	r1, [r3, #12]
	bne	.L118
.L102:
	mov	r2, #1
	mov	r0, #0
	str	r2, [r3, #28]
	mov	r5, r2
	str	r0, [r3, #32]
	b	.L101
.L117:
	ldr	r0, [r3, #20]
	add	r0, ip, r0
	sub	r0, r0, #1
	add	r2, r2, r0, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	beq	.L105
	b	.L104
.L118:
	ldr	r2, [r3, #20]
	add	r2, ip, r2
	sub	r2, r2, #1
	add	r0, r0, r2, lsl #8
	lsl	r0, r0, #1
	ldrh	r2, [lr, r0]
	cmp	r2, #0
	bne	.L101
	b	.L102
.L120:
	.align	2
.L119:
	.word	enemy
	.word	collisionmap2Bitmap
	.word	hOff
	.word	vOff
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	initPlayer1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer1, %function
initPlayer1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #212
	mov	r2, #0
	mov	r6, #1
	mov	r5, #2
	mov	lr, #3
	mov	ip, #16
	ldr	r3, .L123
	ldr	r0, [r3]
	add	r1, r0, #91
	ldr	r3, .L123+4
	lsl	r1, r1, #8
	rsb	r0, r0, r1, asr #8
	str	r0, [r3]
	ldr	r0, .L123+8
	ldr	r0, [r0]
	add	r0, r0, r4
	str	r6, [r3, #20]
	str	r5, [r3, #48]
	str	r4, [r3, #4]
	str	lr, [r3, #52]
	str	r1, [r3, #8]
	str	r0, [r3, #12]
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	pop	{r4, r5, r6, lr}
	bx	lr
.L124:
	.align	2
.L123:
	.word	vOff
	.word	player
	.word	hOff
	.size	initPlayer1, .-initPlayer1
	.align	2
	.global	initObject1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initObject1, %function
initObject1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #111
	mov	r8, #50
	ldr	r2, .L127
	mov	r1, #8
	mov	r10, #32
	stmib	r2, {r8, r9}
	str	r8, [r2, #12]
	mov	r7, #99
	mov	r6, #6
	mov	r4, #1
	mov	r8, #16
	mov	r5, #27
	mov	lr, #177
	mov	fp, #0
	mov	ip, #70
	mov	r0, #230
	str	r10, [r2, #16]
	str	r1, [r2, #20]
	str	r9, [r2]
	ldr	r2, .L127+4
	ldr	r3, .L127+8
	str	r1, [r2, #20]
	str	r8, [r2, #16]
	str	r7, [r2]
	stmib	r2, {r6, r7}
	str	r6, [r2, #12]
	str	r4, [r2, #24]
	ldr	r2, .L127+12
	str	r10, [r3, #20]
	str	fp, [r3, #24]
	str	r1, [r3, #16]
	str	r5, [r3]
	str	r5, [r3, #8]
	str	r4, [r2, #24]
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	lr, [r3, #4]
	str	lr, [r3, #12]
	str	ip, [r2]
	stmib	r2, {r0, ip}
	str	r0, [r2, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L128:
	.align	2
.L127:
	.word	spikes
	.word	key
	.word	ladder
	.word	star
	.size	initObject1, .-initObject1
	.align	2
	.global	updateObject1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateObject1, %function
updateObject1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L131
	ldr	lr, .L131+4
	ldr	r0, [r0]
	ldr	r4, [lr, #12]
	ldr	r1, .L131+8
	sub	r4, r4, r0
	ldr	r1, [r1]
	str	r4, [lr, #4]
	ldr	r4, [lr, #8]
	ldr	ip, .L131+12
	sub	r4, r4, r1
	str	r4, [lr]
	ldr	r4, [ip, #12]
	ldr	lr, [ip, #8]
	ldr	r2, .L131+16
	ldr	r3, .L131+20
	sub	r4, r4, r0
	sub	lr, lr, r1
	str	r4, [ip, #4]
	str	lr, [ip]
	ldr	r4, [r2, #12]
	ldr	ip, [r3, #12]
	sub	r4, r4, r0
	ldr	lr, [r2, #8]
	sub	r0, ip, r0
	ldr	ip, [r3, #8]
	sub	lr, lr, r1
	sub	r1, ip, r1
	str	r4, [r2, #4]
	str	lr, [r2]
	str	r0, [r3, #4]
	str	r1, [r3]
	pop	{r4, lr}
	bx	lr
.L132:
	.align	2
.L131:
	.word	hOff
	.word	spikes
	.word	vOff
	.word	key
	.word	ladder
	.word	star
	.size	updateObject1, .-updateObject1
	.align	2
	.global	drawObject
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawObject, %function
drawObject:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #288
	ldr	r2, .L134
	ldr	r3, [r2, #4]
	ldrb	r1, [r2]	@ zero_extendqisi2
	lsl	r3, r3, #23
	ldr	r2, .L134+4
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	orr	r1, r1, #16384
	strh	r3, [r2, #10]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	bx	lr
.L135:
	.align	2
.L134:
	.word	spikes
	.word	shadowOAM
	.size	drawObject, .-drawObject
	.align	2
	.global	drawKey1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKey1, %function
drawKey1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawKey
	.size	drawKey1, .-drawKey1
	.align	2
	.global	drawLadder1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLadder1, %function
drawLadder1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #36
	ldr	r3, .L139
	ldm	r3, {r1, r3}
	str	lr, [sp, #-4]!
	sub	r0, r1, #32
	ldr	lr, .L139+4
	lsl	r3, r3, #23
	ldr	r2, .L139+8
	lsr	r3, r3, #23
	and	r1, r1, #255
	and	r0, r0, #255
	orr	r3, r3, #16384
	orr	r1, r1, lr
	orr	r0, r0, lr
	strh	r3, [r2, #26]	@ movhi
	strh	r3, [r2, #34]	@ movhi
	strh	r1, [r2, #24]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	ip, [r2, #28]	@ movhi
	strh	ip, [r2, #36]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L140:
	.align	2
.L139:
	.word	ladder
	.word	-32768
	.word	shadowOAM
	.size	drawLadder1, .-drawLadder1
	.align	2
	.global	drawStar1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStar1, %function
drawStar1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawStar
	.size	drawStar1, .-drawStar1
	.align	2
	.global	checkCollision1
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCollision1, %function
checkCollision1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	ip, .L171
	ldr	r4, .L171+4
	ldr	lr, [ip, #16]
	sub	sp, sp, #20
	ldr	r5, [ip, #20]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	ldm	r4, {r0, r1}
	str	lr, [sp, #12]
	ldm	ip, {ip, lr}
	ldr	r7, .L171+8
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L143
	ldr	r3, .L171+12
	ldr	r2, [r4, #16]
	ldr	r0, [r3]
	ldr	r3, [r4, #52]
	sub	r2, r2, r0
	ldr	r0, [r4, #36]
	sub	r3, r3, #1
	cmp	r0, #0
	mov	r1, #1
	str	r3, [r4, #52]
	movne	r3, #0
	str	r2, [r4, #16]
	str	r1, [r4, #60]
	streq	r1, [r4, #36]
	strne	r3, [r4, #36]
	ldr	r2, .L171+16
	mov	r3, #0
	ldr	r1, .L171+20
	ldr	r0, .L171+24
	ldr	r5, .L171+28
	mov	lr, pc
	bx	r5
.L143:
	ldr	r5, .L171+32
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L146
.L168:
	ldr	r6, .L171+36
.L147:
	ldr	r3, [r6, #24]
	cmp	r3, #0
	bne	.L169
.L150:
	ldr	r5, .L171+40
	ldr	r3, [r5, #24]
	cmp	r3, #0
	bne	.L170
.L142:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L170:
	ldr	lr, [r5, #16]
	ldr	ip, [r5, #20]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	ldm	r4, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r5, #4]
	str	ip, [sp, #8]
	ldr	ip, [r5]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L142
	mov	r1, #0
	mov	lr, #1
	ldr	ip, .L171+44
	mov	r3, r1
	str	r1, [r5, #24]
	ldr	r2, .L171+16
	ldr	r1, .L171+48
	ldr	r0, .L171+52
	ldr	r4, .L171+28
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L169:
	ldr	ip, [r6, #16]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	ldm	r4, {r0, r1}
	ldr	r5, [r6, #20]
	str	ip, [sp, #12]
	ldm	r6, {ip, lr}
	str	r5, [sp, #8]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L171+56
	strne	r2, [r3]
	b	.L150
.L146:
	ldr	lr, [r5, #16]
	ldr	ip, [r5, #20]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	ldm	r4, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r5, #4]
	str	ip, [sp, #8]
	ldr	ip, [r5]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L168
	mov	r0, #0
	mov	ip, #1
	ldr	r6, .L171+36
	mov	r3, r0
	str	r0, [r5, #24]
	ldr	r2, .L171+16
	ldr	r1, .L171+60
	ldr	r0, .L171+64
	ldr	r5, .L171+28
	str	ip, [r6, #24]
	mov	lr, pc
	bx	r5
	b	.L147
.L172:
	.align	2
.L171:
	.word	spikes
	.word	player
	.word	collision
	.word	.LANCHOR1
	.word	11025
	.word	55125
	.word	collideSound
	.word	playSoundB
	.word	key
	.word	ladder
	.word	star
	.word	.LANCHOR0
	.word	7698
	.word	magic
	.word	winLevel1
	.word	9606
	.word	accept
	.size	checkCollision1, .-checkCollision1
	.align	2
	.global	checkCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCheat, %function
checkCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L184
	ldr	r3, [r2, #36]
	cmp	r3, #0
	bne	.L174
	ldr	r3, .L184+4
	ldrh	r3, [r3]
	tst	r3, #32
	bxeq	lr
	ldr	r1, .L184+8
	ldrh	r1, [r1]
	tst	r1, #32
	moveq	r1, #1
	streq	r1, [r2, #36]
	bxne	lr
	tst	r3, #16
	bne	.L183
	bx	lr
.L174:
	cmp	r3, #1
	bxne	lr
	ldr	r3, .L184+4
	ldrh	r3, [r3]
	tst	r3, #16
	bxeq	lr
.L183:
	ldr	r3, .L184+8
	ldrh	r3, [r3]
	ands	r3, r3, #16
	streq	r3, [r2, #36]
	bx	lr
.L185:
	.align	2
.L184:
	.word	player
	.word	oldButtons
	.word	buttons
	.size	checkCheat, .-checkCheat
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bl	checkCollision
	ldr	r3, .L253
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L247
.L187:
	ldr	r4, .L253+4
	ldr	r1, .L253+8
	ldr	r2, .L253+12
	ldr	r3, [r4, #16]
	ldr	r1, [r1]
	ldrh	r2, [r2]
	add	r3, r3, r1
	tst	r2, #64
	str	r3, [r4, #16]
	beq	.L188
	ldr	r2, .L253+16
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L248
.L188:
	ldr	r2, [r4, #8]
	ldr	r0, [r4, #28]
	add	ip, r2, r3
	add	r3, r0, ip, asr #8
	sub	r3, r3, #1
	ldr	r1, [r4, #12]
	lsl	r3, r3, #8
	add	lr, r3, r1
	ldr	r5, .L253+20
	lsl	lr, lr, #1
	ldrh	lr, [r5, lr]
	cmp	lr, #0
	beq	.L189
	ldr	lr, [r4, #24]
	add	r3, r3, lr
	add	r3, r3, r1
	add	r3, r5, r3, lsl #1
	ldrh	r3, [r3, #-2]
	cmp	r3, #0
	bne	.L249
.L189:
	mov	ip, #0
	mov	r3, ip
	str	ip, [r4, #16]
.L190:
	add	r3, r2, r3
	add	r3, r0, r3, asr #8
	sub	r3, r3, #1
	lsl	r3, r3, #8
	add	ip, r3, r1
	lsl	ip, ip, #1
	ldrh	ip, [r5, ip]
	cmp	ip, #0
	beq	.L191
	ldr	ip, [r4, #24]
	add	r3, r3, ip
	add	r3, r3, r1
	add	r3, r5, r3, lsl #1
	ldrh	r3, [r3, #-2]
	cmp	r3, #0
	beq	.L191
.L192:
	ldr	lr, [r4, #36]
	ldr	r3, .L253+24
	cmp	lr, #1
	asr	r2, r2, #8
	ldr	ip, [r3]
	beq	.L250
	cmp	lr, #0
	bne	.L195
.L200:
	ldr	r6, [r4, #4]
.L199:
	ldr	lr, [r4, #24]
	add	r6, lr, r6
	cmp	r6, #239
	bgt	.L195
	add	r6, lr, r1
	ldr	r7, [r4, #20]
	sub	r6, r6, #1
	add	r6, r6, r7
	lsl	r8, r2, #8
	add	r9, r8, r6
	lsl	r9, r9, #1
	ldrh	r9, [r5, r9]
	cmp	r9, #0
	beq	.L251
.L201:
	add	r1, r1, r7
	add	lr, lr, r1
	sub	lr, lr, #1
	add	lr, lr, r7
	add	r8, r8, lr
	lsl	r8, r8, #1
	ldrh	r6, [r5, r8]
	cmp	r6, #0
	str	r1, [r4, #12]
	beq	.L202
	add	r0, r0, r2
	sub	r0, r0, #1
	add	r0, lr, r0, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [r5, r0]
	cmp	r0, #0
	bne	.L203
.L202:
	mov	r0, #1
	str	r0, [r4, #36]
	str	r0, [r4, #64]
.L203:
	cmp	ip, #15
	addle	ip, ip, #1
	strle	ip, [r3]
.L195:
	ldr	r0, .L253+28
	ldr	r3, [r0]
	cmp	r3, #0
	ble	.L204
	ldr	lr, [r4]
	cmp	lr, #79
	suble	r3, r3, #1
	strle	r3, [r0]
	cmp	r3, #95
	ble	.L204
.L206:
	ldr	r0, [r4, #64]
	sub	r3, r2, r3
	cmp	r0, #0
	str	r3, [r4]
	movne	r3, #3
	strne	r3, [r4, #44]
	ldr	r3, [r4, #32]
	cmp	r3, #9
	movgt	r2, #0
	movgt	r3, #1
	sub	r1, r1, ip
	addle	r3, r3, #1
	str	r1, [r4, #4]
	strgt	r2, [r4, #44]
	strgt	r2, [r4, #64]
	str	r3, [r4, #32]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L191:
	ldr	r3, [r4, #60]
	cmp	r3, #0
	movne	r3, #1
	strne	r3, [r4, #64]
	mov	r3, #0
	str	r3, [r4, #60]
	b	.L192
.L204:
	ldr	lr, [r4]
	cmp	lr, #80
	addgt	r3, r3, #1
	strgt	r3, [r0]
	b	.L206
.L248:
	ldr	r2, [r4, #60]
	cmp	r2, #0
	bne	.L188
	mov	r2, #1
	ldr	r1, .L253+32
	ldr	r1, [r1]
	sub	r3, r3, r1
	str	r3, [r4, #16]
	str	r2, [r4, #60]
	b	.L188
.L250:
	ldr	r6, [r4, #4]
	cmp	r6, #0
	ble	.L195
	ldr	lr, [r4, #20]
	lsl	r7, r2, #8
	sub	r8, r1, lr
	add	r9, r7, r8
	lsl	r9, r9, #1
	ldrh	r9, [r5, r9]
	cmp	r9, #0
	beq	.L252
.L196:
	sub	lr, r8, lr
	add	r1, r7, lr
	lsl	r1, r1, #1
	ldrh	r1, [r5, r1]
	cmp	r1, #0
	str	r8, [r4, #12]
	beq	.L197
	add	r1, r0, r2
	sub	r1, r1, #1
	add	lr, lr, r1, lsl #8
	lsl	lr, lr, #1
	ldrh	r1, [r5, lr]
	cmp	r1, #0
	bne	.L198
.L197:
	mov	lr, #0
	mov	r1, #1
	cmp	ip, lr
	str	r1, [r4, #64]
	str	lr, [r4, #36]
	movle	r1, r8
	ble	.L199
	sub	ip, ip, #1
	str	ip, [r3]
	mov	r1, r8
	b	.L200
.L247:
	bl	checkCheat
	b	.L187
.L249:
	str	ip, [r4, #8]
	bl	enemyCollision
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #16]
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #12]
	b	.L190
.L251:
	add	r9, r0, r2
	sub	r9, r9, #1
	add	r6, r6, r9, lsl #8
	lsl	r6, r6, #1
	ldrh	r6, [r5, r6]
	cmp	r6, #0
	beq	.L195
	b	.L201
.L252:
	add	r9, r0, r2
	sub	r9, r9, #1
	add	r9, r8, r9, lsl #8
	lsl	r9, r9, #1
	ldrh	r9, [r5, r9]
	cmp	r9, #0
	beq	.L195
	b	.L196
.L198:
	cmp	ip, #0
	movle	r1, r8
	subgt	ip, ip, #1
	strgt	ip, [r3]
	movgt	r1, r8
	b	.L195
.L254:
	.align	2
.L253:
	.word	.LANCHOR0
	.word	player
	.word	grav
	.word	oldButtons
	.word	buttons
	.word	collisionmap2Bitmap
	.word	hOff
	.word	vOff
	.word	.LANCHOR1
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLevel2, %function
updateLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L266
	ldrh	r3, [r3]
	tst	r3, #1
	push	{r4, lr}
	beq	.L256
	ldr	r2, .L266+4
	ldrh	r2, [r2]
	tst	r2, #1
	moveq	r1, #1
	ldreq	r2, .L266+8
	streq	r1, [r2]
.L256:
	tst	r3, #2
	beq	.L257
	ldr	r3, .L266+4
	ldrh	r3, [r3]
	ands	r3, r3, #2
	ldreq	r2, .L266+8
	streq	r3, [r2]
.L257:
	bl	updatePlayer
	bl	updateObject
	bl	updateEnemy
	ldr	r3, .L266+12
	ldr	r4, [r3, #52]
	cmp	r4, #0
	bne	.L255
	ldr	r3, .L266+16
	mov	lr, pc
	bx	r3
	mov	r3, r4
	ldr	r2, .L266+20
	ldr	r1, .L266+24
	ldr	r0, .L266+28
	ldr	r4, .L266+32
	mov	lr, pc
	bx	r4
.L255:
	pop	{r4, lr}
	bx	lr
.L267:
	.align	2
.L266:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	player
	.word	stopSound
	.word	11025
	.word	45764
	.word	loseSound
	.word	playSoundB
	.size	updateLevel2, .-updateLevel2
	.align	2
	.global	updatePlayer1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer1, %function
updatePlayer1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bl	checkCollision1
	ldr	r3, .L331
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L326
.L269:
	ldr	r3, .L331+4
	ldr	r0, .L331+8
	ldr	r1, .L331+12
	ldr	r2, [r3, #16]
	ldr	r0, [r0]
	ldrh	r1, [r1]
	add	r2, r2, r0
	tst	r1, #64
	str	r2, [r3, #16]
	beq	.L270
	ldr	r1, .L331+16
	ldrh	r1, [r1]
	tst	r1, #64
	beq	.L327
.L270:
	ldr	r6, [r3, #8]
	ldr	r5, [r3, #28]
	add	r0, r6, r2
	asr	r4, r0, #8
	add	r1, r4, r5
	sub	r2, r1, #1
	ldr	ip, [r3, #12]
	lsl	r2, r2, #8
	add	r7, r2, ip
	ldr	lr, .L331+20
	lsl	r7, r7, #1
	ldrh	r7, [lr, r7]
	cmp	r7, #0
	beq	.L271
	ldr	r7, [r3, #24]
	add	r2, r2, r7
	add	r2, r2, ip
	add	r2, lr, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	strne	r0, [r3, #8]
	beq	.L271
.L272:
	lsl	r1, r1, #8
	add	r2, ip, r1
	lsl	r2, r2, #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	beq	.L273
	ldr	r2, [r3, #24]
	add	r2, ip, r2
	add	r2, r2, r1
	add	r2, lr, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	beq	.L273
.L274:
	ldr	r0, [r3, #36]
	ldr	r5, .L331+24
	cmp	r0, #1
	ldr	r2, [r5]
	beq	.L328
	cmp	r0, #0
	bne	.L277
.L282:
	ldr	r0, [r3, #4]
.L281:
	ldr	r6, [r3, #24]
	add	r0, r6, r0
	cmp	r0, #239
	bgt	.L277
	add	r0, r6, ip
	ldr	r7, [r3, #20]
	sub	r0, r0, #1
	add	r0, r0, r7
	lsl	r8, r4, #8
	add	r9, r8, r0
	lsl	r9, r9, #1
	ldrh	r9, [lr, r9]
	cmp	r9, #0
	beq	.L329
.L283:
	add	ip, ip, r7
	add	r6, r6, ip
	sub	r6, r6, #1
	add	r7, r6, r7
	add	r8, r8, r7
	lsl	r8, r8, #1
	ldrh	r0, [lr, r8]
	cmp	r0, #0
	str	ip, [r3, #12]
	beq	.L284
	add	r1, r1, r7
	sub	r1, r1, #256
	lsl	r1, r1, #1
	ldrh	r1, [lr, r1]
	cmp	r1, #0
	bne	.L285
.L284:
	mov	r1, #1
	str	r1, [r3, #36]
	str	r1, [r3, #64]
.L285:
	cmp	r2, #15
	addle	r2, r2, #1
	strle	r2, [r5]
.L277:
	ldr	r0, [r3, #64]
	cmp	r0, #0
	sub	ip, ip, r2
	movne	r2, #3
	ldr	r1, .L331+28
	strne	r2, [r3, #44]
	ldr	r2, [r3, #32]
	ldr	r1, [r1]
	cmp	r2, #9
	sub	r4, r4, r1
	movgt	r2, #1
	movgt	r1, #0
	addle	r2, r2, #1
	stm	r3, {r4, ip}
	strgt	r1, [r3, #44]
	strgt	r1, [r3, #64]
	str	r2, [r3, #32]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L273:
	ldr	r2, [r3, #60]
	cmp	r2, #0
	movne	r2, #1
	strne	r2, [r3, #64]
	mov	r2, #0
	str	r2, [r3, #60]
	b	.L274
.L271:
	mov	r2, #0
	asr	r4, r6, #8
	str	r2, [r3, #16]
	add	r1, r5, r4
	b	.L272
.L327:
	ldr	r1, [r3, #60]
	cmp	r1, #0
	bne	.L270
	mov	r1, #1
	ldr	r0, .L331+32
	ldr	r0, [r0]
	sub	r2, r2, r0
	str	r2, [r3, #16]
	str	r1, [r3, #60]
	b	.L270
.L328:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	ble	.L277
	ldr	r6, [r3, #20]
	lsl	r8, r4, #8
	sub	r7, ip, r6
	add	r9, r8, r7
	lsl	r9, r9, #1
	ldrh	r9, [lr, r9]
	cmp	r9, #0
	beq	.L330
.L278:
	sub	r6, r7, r6
	add	r8, r8, r6
	lsl	r8, r8, #1
	ldrh	ip, [lr, r8]
	cmp	ip, #0
	str	r7, [r3, #12]
	beq	.L279
	add	r6, r1, r6
	sub	r6, r6, #256
	lsl	r6, r6, #1
	ldrh	ip, [lr, r6]
	cmp	ip, #0
	bne	.L280
.L279:
	mov	r6, #0
	mov	ip, #1
	cmp	r2, r6
	str	ip, [r3, #64]
	str	r6, [r3, #36]
	movle	ip, r7
	ble	.L281
	sub	r2, r2, #1
	str	r2, [r5]
	mov	ip, r7
	b	.L282
.L326:
	bl	checkCheat
	b	.L269
.L329:
	add	r0, r1, r0
	sub	r0, r0, #256
	lsl	r0, r0, #1
	ldrh	r0, [lr, r0]
	cmp	r0, #0
	beq	.L277
	b	.L283
.L330:
	add	r9, r1, r7
	sub	r9, r9, #256
	lsl	r9, r9, #1
	ldrh	r9, [lr, r9]
	cmp	r9, #0
	beq	.L277
	b	.L278
.L280:
	cmp	r2, #0
	movle	ip, r7
	subgt	r2, r2, #1
	strgt	r2, [r5]
	movgt	ip, r7
	b	.L277
.L332:
	.align	2
.L331:
	.word	.LANCHOR0
	.word	player
	.word	grav
	.word	oldButtons
	.word	buttons
	.word	collisionmapBitmap
	.word	hOff
	.word	vOff
	.word	.LANCHOR1
	.size	updatePlayer1, .-updatePlayer1
	.align	2
	.global	updateLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLevel1, %function
updateLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L344
	ldrh	r3, [r3]
	tst	r3, #1
	push	{r4, lr}
	beq	.L334
	ldr	r2, .L344+4
	ldrh	r2, [r2]
	tst	r2, #1
	moveq	r1, #1
	ldreq	r2, .L344+8
	streq	r1, [r2]
.L334:
	tst	r3, #2
	beq	.L335
	ldr	r3, .L344+4
	ldrh	r3, [r3]
	ands	r3, r3, #2
	ldreq	r2, .L344+8
	streq	r3, [r2]
.L335:
	bl	updatePlayer1
	bl	updateObject1
	ldr	r3, .L344+12
	ldr	r4, [r3, #52]
	cmp	r4, #0
	bne	.L333
	ldr	r3, .L344+16
	mov	lr, pc
	bx	r3
	mov	r3, r4
	ldr	r2, .L344+20
	ldr	r1, .L344+24
	ldr	r0, .L344+28
	ldr	r4, .L344+32
	mov	lr, pc
	bx	r4
.L333:
	pop	{r4, lr}
	bx	lr
.L345:
	.align	2
.L344:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	player
	.word	stopSound
	.word	11025
	.word	45764
	.word	loseSound
	.word	playSoundB
	.size	updateLevel1, .-updateLevel1
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #16
	mov	r1, #2
	mov	ip, #1
	mov	r2, #5
	push	{r4, lr}
	mov	r4, #18
	mov	lr, #31
	ldr	r3, .L348
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	str	r0, [r3, #16]
	ldr	r2, .L348+4
	str	r0, [r3, #20]
	str	ip, [r3, #24]
	str	r1, [r3]
	str	r1, [r3, #8]
	ldr	r3, .L348+8
	str	r4, [r2, #4]
	str	r4, [r2, #12]
	str	lr, [r3, #4]
	str	lr, [r3, #12]
	str	r0, [r2, #16]
	str	r0, [r2, #20]
	str	ip, [r2, #24]
	str	r1, [r2]
	str	r1, [r2, #8]
	str	ip, [r3, #24]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L349:
	.align	2
.L348:
	.word	heart1
	.word	heart2
	.word	heart3
	.size	initLives, .-initLives
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #164
	ldr	r0, .L355
	ldr	r3, .L355+4
	ldr	ip, [r0, #52]
	ldr	r1, [r3, #4]
	cmp	ip, #2
	ldr	ip, .L355+8
	push	{r4, lr}
	ldrb	r0, [r3]	@ zero_extendqisi2
	ldr	r4, .L355+12
	ldr	r3, .L355+16
	ldr	lr, .L355+20
	and	r1, r1, ip
	strh	r0, [r3, #48]	@ movhi
	strh	r1, [r3, #50]	@ movhi
	ldr	r0, [r4, #4]
	ldr	r1, [lr, #4]
	ldrb	r4, [r4]	@ zero_extendqisi2
	ldrb	lr, [lr]	@ zero_extendqisi2
	and	r0, r0, ip
	and	r1, r1, ip
	strh	r4, [r3, #56]	@ movhi
	strh	r0, [r3, #58]	@ movhi
	strh	r1, [r3, #66]	@ movhi
	strh	lr, [r3, #64]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	strh	r2, [r3, #68]	@ movhi
	bgt	.L350
	mov	r2, #512
	strh	r2, [r3, #64]	@ movhi
	strhne	r2, [r3, #56]	@ movhi
.L350:
	pop	{r4, lr}
	bx	lr
.L356:
	.align	2
.L355:
	.word	player
	.word	heart1
	.word	511
	.word	heart2
	.word	shadowOAM
	.word	heart3
	.size	drawLives, .-drawLives
	.align	2
	.global	drawLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel2, %function
drawLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	drawPlayer
	bl	drawEnemy
	bl	drawLives
	ldr	r3, .L367
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L358
	mov	r0, #4
	ldr	r2, [r3, #4]
	ldrb	r1, [r3]	@ zero_extendqisi2
	lsl	r2, r2, #23
	ldr	r3, .L367+4
	lsr	r2, r2, #23
	strh	r2, [r3, #18]	@ movhi
	ldr	r2, .L367+8
	orr	r1, r1, #16384
	strh	r1, [r3, #16]	@ movhi
	ldr	r1, [r2, #24]
	cmp	r1, #0
	strh	r0, [r3, #20]	@ movhi
	beq	.L360
.L366:
	mov	r0, #292
	ldr	r1, [r2, #4]
	ldrb	ip, [r2]	@ zero_extendqisi2
	lsl	r2, r1, #23
	ldr	r1, .L367+12
	lsr	r2, r2, #23
	strh	r2, [r3, #74]	@ movhi
	ldr	r2, [r1, #24]
	cmp	r2, #0
	strh	ip, [r3, #72]	@ movhi
	strh	r0, [r3, #76]	@ movhi
	bne	.L365
.L362:
	mov	r2, #512
	strh	r2, [r3, #24]	@ movhi
	strh	r2, [r3, #32]	@ movhi
.L363:
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L367+4
	ldr	r4, .L367+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L367+20
	ldr	r1, .L367+24
	ldr	r3, [r3]
	smull	r4, r5, r3, r1
	lsl	r1, r3, #16
	lsr	r1, r1, #16
	strh	r1, [r2, #20]	@ movhi
	ldr	r1, .L367+28
	sub	r3, r5, r3, asr #31
	ldrh	r1, [r1]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r1, [r2, #22]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #24]	@ movhi
	bx	lr
.L358:
	mov	r2, #512
	ldr	r3, .L367+4
	strh	r2, [r3, #16]	@ movhi
	ldr	r2, .L367+8
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L366
.L360:
	mov	r1, #45
	mov	r0, #2
	mov	ip, #292
	str	r1, [r2, #4]
	strh	r1, [r3, #74]	@ movhi
	ldr	r1, .L367+12
	str	r0, [r2]
	ldr	r2, [r1, #24]
	cmp	r2, #0
	strh	r0, [r3, #72]	@ movhi
	strh	ip, [r3, #76]	@ movhi
	beq	.L362
.L365:
	ldr	r2, [r1]
	sub	r2, r2, #32
	and	r2, r2, #255
	mvn	r2, r2, lsl #17
	mov	r0, #36
	mvn	r2, r2, lsr #17
	ldr	r1, [r1, #4]
	lsl	r1, r1, #23
	lsr	r1, r1, #23
	orr	r1, r1, #16384
	strh	r2, [r3, #32]	@ movhi
	strh	r1, [r3, #34]	@ movhi
	strh	r0, [r3, #36]	@ movhi
	b	.L363
.L368:
	.align	2
.L367:
	.word	key
	.word	shadowOAM
	.word	star
	.word	ladder
	.word	DMANow
	.word	hOff
	.word	1431655766
	.word	vOff
	.size	drawLevel2, .-drawLevel2
	.align	2
	.global	initLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel1, %function
initLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	r3, #512
	push	{r4, r5, r6, lr}
	mov	r1, #70
	mov	r5, #1
	ldr	ip, .L371
	ldr	r0, .L371+4
	str	r2, [ip]
	ldr	ip, .L371+8
	str	r2, [r0]
	str	r2, [ip]
	ldr	r0, .L371+12
	ldr	ip, .L371+16
	ldr	r4, .L371+20
	str	r2, [r0]
	str	r2, [ip]
	ldr	r0, .L371+24
	ldr	r2, .L371+28
	strh	r3, [r4, #40]	@ movhi
	str	r5, [r0]
	str	r1, [r2]
	bl	initPlayer1
	bl	initObject1
	mov	r0, #288
	mov	ip, #4
	mov	r3, #292
	ldr	r2, .L371+32
	ldrb	r1, [r2]	@ zero_extendqisi2
	orr	r1, r1, #16384
	strh	r1, [r4, #8]	@ movhi
	ldr	r2, [r2, #4]
	ldr	r1, .L371+36
	ldr	r6, .L371+40
	and	r2, r2, r1
	orr	r2, r2, #16384
	strh	r2, [r4, #10]	@ movhi
	ldr	r2, [r6, #4]
	ldr	lr, .L371+44
	strh	r0, [r4, #12]	@ movhi
	ldrb	r0, [r6]	@ zero_extendqisi2
	and	r2, r2, r1
	strh	r2, [r4, #18]	@ movhi
	orr	r0, r0, #16384
	ldr	r2, [lr, #4]
	strh	r0, [r4, #16]	@ movhi
	ldrb	r0, [lr]	@ zero_extendqisi2
	and	r2, r2, r1
	strh	r2, [r4, #74]	@ movhi
	strh	r0, [r4, #72]	@ movhi
	strh	ip, [r4, #20]	@ movhi
	strh	r3, [r4, #76]	@ movhi
	bl	initLives
	bl	drawLives
	ldr	r3, .L371+48
	mov	lr, pc
	bx	r3
	ldr	r4, .L371+52
	mov	r3, r5
	ldr	r2, .L371+56
	ldr	r1, .L371+60
	ldr	r0, .L371+64
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L372:
	.align	2
.L371:
	.word	.LANCHOR0
	.word	inLevel2
	.word	vOff
	.word	hOff
	.word	winGame
	.word	shadowOAM
	.word	inLevel1
	.word	grav
	.word	spikes
	.word	511
	.word	key
	.word	star
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	255301
	.word	gameSong
	.size	initLevel1, .-initLevel1
	.align	2
	.global	drawLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel1, %function
drawLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	drawPlayer
	mov	r1, #288
	ldr	r2, .L382
	ldr	r5, .L382+4
	ldr	r3, [r2, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
	ldr	r4, .L382+8
	and	r3, r3, r5
	orr	r2, r2, #16384
	orr	r3, r3, #16384
	strh	r2, [r4, #8]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r1, [r4, #12]	@ movhi
	bl	drawLives
	ldr	r3, .L382+12
	ldr	r2, [r3, #24]
	cmp	r2, #0
	moveq	r3, #512
	movne	r1, #4
	ldrbne	r2, [r3]	@ zero_extendqisi2
	ldrne	r3, [r3, #4]
	strheq	r3, [r4, #16]	@ movhi
	andne	r5, r5, r3
	ldr	r3, .L382+16
	orrne	r2, r2, #16384
	strhne	r2, [r4, #16]	@ movhi
	ldr	r2, [r3, #24]
	strhne	r5, [r4, #18]	@ movhi
	strhne	r1, [r4, #20]	@ movhi
	cmp	r2, #0
	beq	.L376
	mov	r1, #292
	ldr	r2, [r3, #4]
	ldrb	r0, [r3]	@ zero_extendqisi2
	lsl	r3, r2, #23
	lsr	r3, r3, #23
	strh	r3, [r4, #74]	@ movhi
	ldr	r3, .L382+20
	ldr	r2, [r3, #24]
	cmp	r2, #0
	strh	r0, [r4, #72]	@ movhi
	strh	r1, [r4, #76]	@ movhi
	bne	.L381
.L378:
	mov	r3, #512
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #32]	@ movhi
.L379:
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L382+8
	ldr	r4, .L382+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L382+28
	ldr	r1, .L382+32
	ldr	r3, [r3]
	smull	r4, r5, r3, r1
	lsl	r1, r3, #16
	lsr	r1, r1, #16
	strh	r1, [r2, #20]	@ movhi
	ldr	r1, .L382+36
	sub	r3, r5, r3, asr #31
	ldrh	r1, [r1]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r1, [r2, #22]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #24]	@ movhi
	bx	lr
.L376:
	mov	r2, #45
	mov	r1, #2
	mov	r0, #292
	str	r2, [r3, #4]
	str	r1, [r3]
	ldr	r3, .L382+20
	strh	r2, [r4, #74]	@ movhi
	ldr	r2, [r3, #24]
	cmp	r2, #0
	strh	r1, [r4, #72]	@ movhi
	strh	r0, [r4, #76]	@ movhi
	beq	.L378
.L381:
	mov	r0, #36
	ldm	r3, {r2, r3}
	ldr	ip, .L382+40
	sub	r1, r2, #32
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	and	r1, r1, #255
	and	r2, r2, #255
	orr	r3, r3, #16384
	orr	r1, r1, ip
	orr	r2, r2, ip
	strh	r3, [r4, #26]	@ movhi
	strh	r3, [r4, #34]	@ movhi
	strh	r1, [r4, #32]	@ movhi
	strh	r2, [r4, #24]	@ movhi
	strh	r0, [r4, #28]	@ movhi
	strh	r0, [r4, #36]	@ movhi
	b	.L379
.L383:
	.align	2
.L382:
	.word	spikes
	.word	511
	.word	shadowOAM
	.word	key
	.word	star
	.word	ladder
	.word	DMANow
	.word	hOff
	.word	1431655766
	.word	vOff
	.word	-32768
	.size	drawLevel1, .-drawLevel1
	.align	2
	.global	updateLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLives, %function
updateLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L388
	ldr	r3, [r3, #52]
	cmp	r3, #2
	bxgt	lr
	mov	r2, #512
	ldr	r3, .L388+4
	strh	r2, [r3, #64]	@ movhi
	strhne	r2, [r3, #56]	@ movhi
	bx	lr
.L389:
	.align	2
.L388:
	.word	player
	.word	shadowOAM
	.size	updateLives, .-updateLives
	.global	jumpval
	.comm	grav,4,4
	.global	cheat
	.comm	heart3,36,4
	.comm	heart2,36,4
	.comm	heart1,36,4
	.comm	star,36,4
	.comm	spikes,36,4
	.comm	enemy,36,4
	.comm	ladder,36,4
	.comm	key,36,4
	.comm	player,68,4
	.comm	shadowOAM,1024,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	jumpval, %object
	.size	jumpval, 4
jumpval:
	.word	1000
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cheat, %object
	.size	cheat, 4
cheat:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
