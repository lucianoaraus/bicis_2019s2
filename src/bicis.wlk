import accesorios.*

class Bicicleta{
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method agregarAccesorio(accesorio){ accesorios.add(accesorio) }
	method sacarAccesorio(accesorio){ accesorios.remove(accesorio) }
	method altura(){ return rodado * 2.5 + 15 }
	method velocidadCrucero(){ return if( largo > 120 ){ rodado + 6 }else{ rodado + 2 } }
	method carga(){ return accesorios.sum( { acc => acc.carga() } ) }
	method peso(){ return (rodado / 2) + accesorios.sum( { acc => acc.peso() } ) }
	method tieneLuz(){ return return accesorios.any( { acc => acc.esLuminoso() } ) }
	method cantidadAccesoriosLivianos(){ return accesorios.count( { acc => acc.esLiviano() } ) }
	method sinAccesorios(){ return accesorios == [] }
}