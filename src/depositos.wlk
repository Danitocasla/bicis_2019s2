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
	method marcaBiciMasRapida(){
		return bicicletas.max({bici=>bici.velocidadCrucero()}).marca()
	}
	method cargaTotalLargas(){
		return bicicletas.filter({
			bici=>bici.largo()>170
		}).sum({bici=>bici.carga()})
	}
	method cantidadBiciSinAcc(){
		return bicicletas.filter({
			bici=>bici.accesorios().size()==0
		}).size()
	}
	method bicisCompanieras(unaBici){
		return bicicletas.filter({
			bici=> bici.esCompaniera(unaBici)//corregido
			/*(bici.largo() - unaBici.largo()).between(-10,10) and 
			bici.marca()==unaBici.marca()*/
		})
	}
	//desafio
	method hayCompanieras(){
		return bicicletas.any({ bici =>
			not self.bicisCompanieras(bici).isEmpty()
		})
	}
	
	
	method seHizoLaLuz(){
		const cantidadSinLuz = bicicletas.count({bici => not bici.tieneLuz()})
		return 	bicicletas.drop(cantidadSinLuz).all({bici=>bici.tieneLuz()})
		}
}