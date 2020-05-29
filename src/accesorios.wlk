class Farolito{
	method peso(){return 0.5}
	method Carga(){return 0}
	method esLuminoso(){return true}
}
class Canasto{
	var property volumen
	method peso(){return volumen / 10}
	method Carga(){return volumen * 2}
	method esLuminoso(){return true}
}
class Morral{
	var property largo
	var property ojoDeGato
	method peso(){return 1.2}
	method Carga(){return largo / 3}
	method esLuminoso(){return ojoDeGato}
}