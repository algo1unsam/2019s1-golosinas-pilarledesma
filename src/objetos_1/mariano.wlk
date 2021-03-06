import golosinas.*

object mariano {

	const bolsa =#{}
	
	method comprar(unaGolosina) { bolsa.add(unaGolosina) }
	method golosinas() { return bolsa }
	
	method probarGolosinas(){ 
		bolsa.forEach{unaGolosina => unaGolosina.mordisco()}
	}
	
	method desechar(unaGolosina){
		bolsa.remove(unaGolosina)
	}
	
	method hayGolosinaSinTACC(){
		bolsa.any{ unaGolosina => !unaGolosina.libreGluten()}
	}
	
	method preciosCuidados(){
		bolsa.all{ unaGolosina => unaGolosina.precio() <= 10}
	}
	
	method golosinaDeSabor(unSabor){
		return bolsa.find{ unaGolosina => unaGolosina.gusto() == unSabor}
	}
	
	method golosinasDeSabor(unSabor){
		return bolsa.filter{ unaGolosina => unaGolosina.gusto() == unSabor }
	}
	
	method sabores(){
		return bolsa.map{unaGolosina => unaGolosina.gusto()}
	}

	method golosinaMasCara(){
		return bolsa.max{ unaGolosina => unaGolosina.precio() }
	}
	
	method pesoGolosinas(){
		return bolsa.sum{ unaGolosina => unaGolosina.peso()}
	} 
	
	
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.difference(bolsa)
	}
	
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.difference(bolsa)
	}
	
	
	
	
}

