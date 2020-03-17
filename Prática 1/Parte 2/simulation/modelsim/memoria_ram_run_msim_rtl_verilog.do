transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Aluno/Documents/Pratica1.2\ -\ Pierre_Eduardo {C:/Users/Aluno/Documents/Pratica1.2 - Pierre_Eduardo/DecodDisplay.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aluno/Documents/Pratica1.2\ -\ Pierre_Eduardo {C:/Users/Aluno/Documents/Pratica1.2 - Pierre_Eduardo/main.v}
vlog -vlog01compat -work work +incdir+C:/Users/Aluno/Documents/Pratica1.2\ -\ Pierre_Eduardo {C:/Users/Aluno/Documents/Pratica1.2 - Pierre_Eduardo/memoria_ram.v}

