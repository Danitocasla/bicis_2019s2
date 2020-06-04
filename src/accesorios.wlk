class Farolito{
	method peso(){return 0.5}
	method carga(){return 0}
	method esLuminoso(){return true}
}
class Canasto{
	var property volumen
	method peso(){return volumen / 10}
	method carga(){return volumen * 2}
	method esLuminoso(){return true}
}
class Morral{
	var property largo
	var property ojoDeGato
	method peso(){return 1.2}
	method carga(){return largo / 3}
	method esLuminoso(){return ojoDeGato}
}

/*
 * Se puede agregar un objeto o clase respetando el contrato de peso,
 * carga y esLuminoso para ser polimorfico con los demas objetos 
 */