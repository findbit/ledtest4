

#define GPJ2CON 0XE0200280
#define GPJ2DAT 0XE0200284

.global _start	//把_Start链接属性改为外部，消除链接时的警告
_start:
	//
	ldr r0, =0x00001111	//
	ldr r1, =GPJ2CON
	str r0, [r1]

	ldr r0, =0x0a
	ldr r1, =GPJ2DAT
	str r0, [r1]
b .			//实现死循环



