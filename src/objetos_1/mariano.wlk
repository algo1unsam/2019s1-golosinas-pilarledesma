import golosinas.*

object mariano {

	const bolsa =#{}
	
	method comprar(unaGolosina) { bolsa.add(unaGolosina) }
	method golosinas() {
		return bolsa
	}
	
	method probarGolosinas(){ 
		bolsa.forEach{unaGolosina => unaGolosina.mordisco()}
	}
	
	method desechar(unaGolosina){
		bolsa.remove(unaGolosina)
	}
	
	
	
	
	
	
}

