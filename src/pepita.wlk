object pepita {
	var energia = 100
	
	method energia() {
		return energia
	}
	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method estaFeliz(){
		return energia.between(500,1000)
	}

	method cuantoQuiereVolar(){
		return self.agregados() + energia / 5
	}

	method agregados(){
		var kmAgregados = 0
		if(energia.between(300,400)){
			kmAgregados = kmAgregados + 10
		}
		if(energia % 20 == 0){
			kmAgregados = kmAgregados + 15
		}
		return kmAgregados
	}
	
	method salirAComer(){
		self.vola(10)
		self.comer(alpiste)
	}
	method haceLoQueQuieras(){
		if( self.estaCansada() ){
			self.comer(alpiste)
		}
		if( self.estaFeliz() ){
			self.vola(8)
		}
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var energiaDeMijo
	method mojarse() { 
		energiaDeMijo = 15
	}	
	method secarse() { 
		energiaDeMijo = 20
	}
	method energiaQueOtorga() { 
		return energiaDeMijo
	}
}

object canelones {
	var constante = 20

	method salsa() { 
		 constante = constante + 5 
	}

	method queso() { 
		constante = constante + 7 
	}
	method quitarSalsa() { 
		constante = constante - 5 
	}

	method quitarQueso() { 
		constante = constante - 7 
	}	
	
	method energiaQueOtorga() { 
		return constante
	}		
}


// Parte 3

object roque{
	method entrenar(){
		pepita.vola(10)
		pepita.comer(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}
}