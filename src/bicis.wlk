import accesorios.*

class Bicis {
	var property accesorios = []
	var property rodado
	var property largo
	var property marca
	
	method agregarAccesorio(unAccesorio){
		accesorios.add(unAccesorio)
	}
			
	method altura(){return rodado*2.5 + 15}
	method velocidadCrucero(){
		if(largo>120){
			return rodado + 6
		}
		else{return rodado + 2}
	}
	method carga(){
		return accesorios.sum({acc=>acc.peso()})
	}
	method tieneLuz(){
		return accesorios.size()>0
	}
	method cantidadAccesoriosLivianos(){
		return accesorios.filter({acc=>acc.peso()>1}).size()
	}
}