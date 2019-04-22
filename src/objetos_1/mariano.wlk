import golosinas.*

object mariano {

	const bolsa =#{}
	const golosinasDeseadas =#{}
	const gustosDeseados =#{}
	
	
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
	
	method agregarGolosinasDeseadas(unaGolosina){ golosinasDeseadas.add(unaGolosina)}
	
	method agregarGustosDeseados(unaGolosina){ gustosDeseados.add(unaGolosina)}	
	
	
	//revisar estos dos metodos
	method golosinasFaltantes(){
		return golosinasDeseadas.difference(bolsa)
	}
	
	
}

