import remiseras.*

object oficina {
	var primeraOpcion = juana
	var segundaOpcion = roxana
	var primeraOpcionActual = primeraOpcion
	
	method asignarRemiseras(remisera1, remisera2){
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}
	method cambiarPrimerRemiserarPor(remisera){
		primeraOpcion = remisera
	}
	method cambiarSegundoRemiserarPor(remisera){
		segundaOpcion = remisera
	}
	method intercambiarRemiseras(){
		primeraOpcionActual = primeraOpcion
		primeraOpcion = segundaOpcion
		segundaOpcion = primeraOpcionActual
	}
	method remiseraElegidaParaViaje(cliente, kms){
		if (((primeraOpcion.precioViaje(cliente , kms) - segundaOpcion.precioViaje(cliente , kms)) > 30)){
			return segundaOpcion
		}
		else {
			return primeraOpcion
		}
	}
}