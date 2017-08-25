object sanMartin {
	var caballos = 10
	var tropas = []
	
	method tropas(){
		return tropas
	}
	
	method caballos() {
		return caballos
	}
	
	method reclutar(tropa) {
		tropas.add(tropa)
	}
	
	
	method echar(tropa) {
		tropas.remove(tropa)
	}
	
	method echarATodos() {
		tropas = []
	}
	
	method tamanioEjercito() {
		return tropas.size()	
	}
	
	method formaParte(soldado) {
		return tropas.contains(soldado)	
	}
	
	method suficientesCaballos() {
		return self.tamanioEjercito() < caballos
	}
	
	method ejercitoMasNumeroso(enemigo) {
		return self.tamanioEjercito() > enemigo.tamanioEjercito()
	}
	
	method leDaMiedo(enemigo) {
		return enemigo.esTemerario() || tropas.isEmpty()
	}
	
	method atacar(enemigo) {
		tropas.forEach({tropa => enemigo.recibirAtaque(tropa)})
	}
}

object capitanRealista {
	var soldados = 5
	var coeficienteDePoder = 100
	
	method tamanioEjercito() {
		return soldados
	}
	
	method esTemerario() {
		return self.tamanioEjercito() > 100
	}
	
	method recibirAtaque(tropa) {
		coeficienteDePoder -= tropa.poder() / 10
	}
}

object cabral{
	method poder(){
		return 5
	}
}

object luisBeltran{
	method poder(){
		return 5
	}
}

object remedios{
	method poder(){
		return 0
	}
}

object superAgente86{
	method poder(){
		return 1
	}
	
}