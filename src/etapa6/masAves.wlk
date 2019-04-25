
object pepon {
	var energia = 0
	
	method energia() { return energia }
	method comer(cosa, cuanto) { 
		energia += (cosa.energiaPorGramo() / 2) * cuanto
	}  
	method volar(kms) {
		energia -= 1 + (kms / 2)	
	}
	method haceLoQueQuieras() { 
		self.volar(1)
	}
	method puedeVolar(unosKms){ return (self.energia() >= 1 + unosKms*0.5) }
}

object pipa {
	var acumuladoKmsRecorridos = 0
	var acumuladoGramosIngeridos = 0
	
	method comer(cosa, gramos) {
		acumuladoGramosIngeridos += gramos
	}
	
	method volar(kms) {
		acumuladoKmsRecorridos += kms
	}
	method puedeVolar(unosKms){ return true }
	
	/*
	 * cuando le dicen a pipa que haga lo que quiera, no hace nada
	 */
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código?
	method energia(){ return 1}
	method acumuladoKmsRecorridos() { return acumuladoKmsRecorridos }
	method acumuladoGramosIngeridos() { return acumuladoGramosIngeridos }
}
