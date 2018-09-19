/** First Wollok example */
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
	
	method visitar(ciudad) {
		ciudad.serVisitadaPor(self)
	}

	method pedirAyuda(ciudad) {
		caballos += ciudad.cuantosCaballosDona()
	}
	
	method alguienMolesta() {
		tropas.any({soldado => soldado.molesta()})
	}
	
	method desercionMasiva() {
		tropas.filter({soldado => !soldado.puedeDesertar()})
	}
	
	method leGanaA(general) {
		return self.ejercitoMasNumeroso(general) && !self.leDaMiedo(general) && self.poder() > general.poder()
	}
	
	method poder() {
		return tropas.sum({soldado => soldado.poder()})
	}
}

object sanLorenzo {
	var poblacion = [gladys, pepita, cabral]
	method soldadosParaReclutar(){
		return poblacion.filter({soldado => soldado.poder() > 0})
	}
	method noCombatientes(){
		return poblacion.filter({soldado => !self.soldadosParaReclutar().contains(soldado)})
	}
	method entrenarA(tropas){
		tropas.forEach({tropa => tropa.entrenar()})	
	}
	method cuantosCaballosDona(){
		return self.noCombatientes().size()
	}
	
	method serVisitadaPor(general){
		self.soldadosParaReclutar().forEach({soldado => general.reclutar(soldado)})
		self.entrenarA(general.tropas())
	}
}

object capitanRealista {
	var soldados = 5
	var coeficienteDePoder = 100
	
	method tamanioEjercito() {
		return soldados
	}
	method coeficienteDePoder(){
		return coeficienteDePoder
	}
	
	method poder() {
		return coeficienteDePoder * self.tamanioEjercito()
	}
	
	method esTemerario() {
		return self.tamanioEjercito() > 100
	}
	
	method recibirAtaque(tropa) {
		coeficienteDePoder -= tropa.poder() / 10
		soldados -= tropa.poder()
	}
}

object cabral{
	var poder = 5
	method poder(){
		return poder
	}
	
	method puedeDesertar() {
		return false
	}

	method entrenar(){
		poder += 1
	}
	method molesta(){
		return false
	}
}

object pepita{
	method poder(){
		return 15
	}
	
	method puedeDesertar() {
		return true
	}

	method molesta(){
		return false
	}
	method entrenar(){
	}
}


object gladys{
	method entrenar(){
	}
	method poder(){
		return 0
	}
	method molesta(){
		return true
	}
	method puedeDesertar() {
		return true
	}
}


object luisBeltran{
	var poder = 5
	method entrenar(){
		poder += 1
	}
	method molesta(){
		return false
	}
	method poder(){
		return poder
	}
	method puedeDesertar() {
		return true
	}
}

object remedios{
	method entrenar(){
	}
	method molesta(){
		return false
	}
	method poder(){
		return 0
	}
	method puedeDesertar() {
		return true
	}
}

object superAgente86{
	method poder(){
		return 1
	}
	
	method molesta(){
		return false
	}
	
	method puedeDesertar() {
		return true
	}
	
	method entrenar(){
	}
}