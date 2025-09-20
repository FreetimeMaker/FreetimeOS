	.file	"siglist-gen.c"
	.text
	.globl	__sys_sigabbrev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"HUP"
.LC1:
	.string	"INT"
.LC2:
	.string	"QUIT"
.LC3:
	.string	"ILL"
.LC4:
	.string	"TRAP"
.LC5:
	.string	"ABRT"
.LC6:
	.string	"BUS"
.LC7:
	.string	"FPE"
.LC8:
	.string	"KILL"
.LC9:
	.string	"USR1"
.LC10:
	.string	"SEGV"
.LC11:
	.string	"USR2"
.LC12:
	.string	"PIPE"
.LC13:
	.string	"ALRM"
.LC14:
	.string	"TERM"
.LC15:
	.string	"STKFLT"
.LC16:
	.string	"CHLD"
.LC17:
	.string	"CONT"
.LC18:
	.string	"STOP"
.LC19:
	.string	"TSTP"
.LC20:
	.string	"TTIN"
.LC21:
	.string	"TTOU"
.LC22:
	.string	"URG"
.LC23:
	.string	"XCPU"
.LC24:
	.string	"XFSZ"
.LC25:
	.string	"VTALRM"
.LC26:
	.string	"PROF"
.LC27:
	.string	"WINCH"
.LC28:
	.string	"POLL"
.LC29:
	.string	"PWR"
.LC30:
	.string	"SYS"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	__sys_sigabbrev, @object
	.size	__sys_sigabbrev, 520
__sys_sigabbrev:
	.zero	8
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.zero	264
	.globl	__sys_siglist
	.section	.rodata.str1.1
.LC31:
	.string	"Hangup"
.LC32:
	.string	"Interrupt"
.LC33:
	.string	"Quit"
.LC34:
	.string	"Illegal instruction"
.LC35:
	.string	"Trace/breakpoint trap"
.LC36:
	.string	"Aborted"
.LC37:
	.string	"Bus error"
.LC38:
	.string	"Floating point exception"
.LC39:
	.string	"Killed"
.LC40:
	.string	"User defined signal 1"
.LC41:
	.string	"Segmentation fault"
.LC42:
	.string	"User defined signal 2"
.LC43:
	.string	"Broken pipe"
.LC44:
	.string	"Alarm clock"
.LC45:
	.string	"Terminated"
.LC46:
	.string	"Stack fault"
.LC47:
	.string	"Child exited"
.LC48:
	.string	"Continued"
.LC49:
	.string	"Stopped (signal)"
.LC50:
	.string	"Stopped"
.LC51:
	.string	"Stopped (tty input)"
.LC52:
	.string	"Stopped (tty output)"
.LC53:
	.string	"Urgent I/O condition"
.LC54:
	.string	"CPU time limit exceeded"
.LC55:
	.string	"File size limit exceeded"
.LC56:
	.string	"Virtual timer expired"
.LC57:
	.string	"Profiling timer expired"
.LC58:
	.string	"Window changed"
.LC59:
	.string	"I/O possible"
.LC60:
	.string	"Power failure"
.LC61:
	.string	"Bad system call"
	.section	.data.rel.ro.local
	.align 32
	.type	__sys_siglist, @object
	.size	__sys_siglist, 520
__sys_siglist:
	.zero	8
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	.LC55
	.quad	.LC56
	.quad	.LC57
	.quad	.LC58
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.zero	264
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
