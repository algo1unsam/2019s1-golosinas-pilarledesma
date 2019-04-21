import golosinas.*

object mariano {

	const bolsa =#{}
	
	method comprar(golosina) { bolsa.add(golosina) }
	method golosinas() {
		return bolsa
	}
	
	method probarGolosinas(){ 
		bolsa.forEach{golosina => golosina.mordisco()}
	}
}

