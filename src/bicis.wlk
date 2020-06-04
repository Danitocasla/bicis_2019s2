import accesorios.*

class Bicis {
	var property accesorios = []
	var property rodado
	var property largo
	var property marca
	
	method esCompaniera(unaBici){ //correccion
		return self.sonLargosParecidosCon(unaBici) and 
			bici.marca()==unaBici.marca()
			and self != unaBici
	}
	method sonLargosParecidosCon(unaBici){ //correccion
		return (bici.largo() - unaBici.largo()).between(-10,10)
	}
	
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
	method peso(){
		return ((rodado/2)+ accesorios.sum({acc=>acc.peso()})) 
	}
	method carga(){
		return accesorios.sum({acc=>acc.carga()})
	}
	method tieneLuz(){
		return accesorios.filter({acc=>acc.esLuminoso()}).size()>0
	}
	method cantidadAccesoriosLivianos(){
		return accesorios.filter({acc=>acc.peso()<1}).size()
	}
}