class Deposito {
	const bicicletas = []
	
	method agregarBici(unaBici){
		bicicletas.add(unaBici)
	}
	
	method bicisRapidas(){
		return bicicletas.filter({bici=>bici.velocidadCrucero()>25})
	}
	method bicisMarcas(){
		return bicicletas.map({bici=>bici.marca()}).asSet()
	}
	method depoNocturno(){
		return bicicletas.all({bici=>bici.tieneLuz()})
	}
	method hayBiciSuperCarga(carga){
		return bicicletas.any({bici=>bici.carga()>carga})
	}
}