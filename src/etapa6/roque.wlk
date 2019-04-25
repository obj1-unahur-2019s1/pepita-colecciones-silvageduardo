import pepita.*
import comidas.*
import masAves.*

object roque {
	
	var pupilos = [ ] //lista vacia

	method agregarPupilo(unAve) {  //agregar a la lista
		pupilos.add(unAve)			
	}
	method cuantosPupilosTiene(){ //size()
		return pupilos.size()
	}								//get posicion
	method dejarPupilo(unAve) { //sacar de la lista remove
		pupilos.remove(unAve) 	//filter devuelve otra lista que comple la condicion
		}
	method tieneComoPupilo(unAve){ return pupilos.contains(unAve) }// contains booleano si esta o no
	method entrenar() { 
		pupilos.forEach({ pupilo =>
		pupilo.volar(10)
		pupilo.comer(alpiste,30)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
		})
		}
	method pupilosCapacesDeVolar(unosKms){ 
		return pupilos.filter({ pupilo =>
		pupilo.puedeVolar(unosKms)})
		}

// pupilos fortachones mas de 100 energia
method pupilosFortachones(){
	return pupilos.filter({ pupilo =>
		pupilo.energia > 100 })
}
}
}