object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 }
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
}

object caramelo {
	var peso = 5
	
	method precio() { return 1 }
	method peso() { return peso }
	method mordisco() { peso = peso - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
	
}

object chupetin {
	var peso = 7
	
	method precio() { return 2 }
	method peso() { return peso }
	method mordisco() { 
		if (peso > 2 ) (peso = 0.9 * peso) 
	}
	method gusto() { return "naranja" }
	method libreGluten() { return true }
}

object oblea {
	var peso = 250
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { 
		if (peso > 70 ) (peso = peso * 0.5) else ( peso = peso * 0.75 ) 
	}
	method gusto() { return "vainilla" }
	method libreGluten() { return false }
}

object chocolatin {

	var pesoInicial
	var pesoActual	

	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto}
	
	method precio() { return (0.5 * pesoInicial) }
	method peso() { return pesoActual }
	method mordisco() { pesoActual = pesoActual - 2}
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
	
	
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio() + 2}
	method peso() { return golosinaInterior.peso() + pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten()}	
}

object tuttifrutti {
	var pesoInicial = 5
	var property libreGluten
	var property gustoActual = "frutilla"
	
	
	method peso(){return pesoInicial}
	method libreGluten(boolean){
		libreGluten = boolean
	}
	method precio(){
		if (self.libreGluten()) return 7 else return 10 
	}
	
	method mordisco(){
		if (gustoActual == "frutilla") 
			gustoActual = "chocolate" 
				else if (gustoActual == "chocolate") 
					gustoActual = "naranja"
						else (gustoActual == "naranja") 
							gustoActual = "frutilla"
	}	
}

