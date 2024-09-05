
.text
#	li a0,0x111117FF #pseudo instruccion que usa addi, ori,sli, etc para llegar al valor
	# en este caso solo usa addi
	li a1,0x11111CAB
#y compararlo con
#igual a ejercicio anterior
#	lui a2,0x11111
#	ori a2,a2,0x7FF
	lui a3,0x11112 # le sumamos 1 por el complemento
#	ori a3,a3,0xcab no se puede ya que  el bit 12 se guarda para extender signo
	ori a3,a3,-0x355 #resta para llegar 0x355 es el complemento de cab
	#Pero el ori al hacer signo extendido, llega a 0xfffffcab
	
#y con
#	lui a4,0x11111
#	addi a4,a4,0x7FF
	lui a5,0x11112
	addi a5,a5,-0x355
#La accion corecta es usar addi, ya que addi no
