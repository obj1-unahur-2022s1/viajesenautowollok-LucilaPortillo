// clientas
object ludmila{
	const pesosPorKm = 18
	
	method precioPorKm(){
		return pesosPorKm
	}
}


object anaMaria{
	var estado = true
	
	method estaEstable(){
		return(estado)
	}
	method precioPorKm(){
		if (self.estaEstable()){
			return 30
		}
		else {
			return 25
		}
	}
	
}


object teresa {
	var pesosPorKm = 22
	
	method cambiarPesosPorKm(nuevoValor){
		pesosPorKm = nuevoValor
		return(pesosPorKm)
	}
	method precioPorKm(){
		return(pesosPorKm)
	}
}


object melina {
	var empleadora = ludmila

	method clientaActual(){
		return empleadora 
	}
	method cambiarEmpleadora(clienta){
		empleadora = clienta
		return empleadora
	}
	method precioPorKm(){	
		return(empleadora.precioPorKm() - 3)
	}
}

// Remiseras
object roxana {
	var precioACobrar = 0
	
	method precioViaje(cliente , km){
		precioACobrar = cliente.precioPorKm() * km
		return(precioACobrar)
	}
}


object gabriela {
	var precioACobrar = 0
	
	method precioViaje(cliente , km){
		precioACobrar = cliente.precioPorKm() * km
		precioACobrar = precioACobrar + ((precioACobrar * 20) / 100)
		return(precioACobrar)
	}
}


object mariela {
	var precioACobrar = 0
	
	method precioViaje(cliente , km){
		precioACobrar = cliente.precioPorKm() * km
		if (precioACobrar > 50){
			return(precioACobrar)
		}
		return(50)
	
	}
}


object juana {
	method precioViaje(cliente , km){
		if (km <= 8){
			
			return(100)
		}
		else {
			return(200)
		}
	}
}


object lucia {
	var remiseraReemplazada = roxana
	var precioACobrar = 0
	
	method reemplazoActual(){
		return remiseraReemplazada
	}
	method reemplazarPor(remisera){
		remiseraReemplazada = remisera
		return remiseraReemplazada
	}
	method precioViaje(cliente , km){
		precioACobrar = remiseraReemplazada.precioViaje(cliente , km)
		return precioACobrar
	}
}

//Oficina de la cooperativa
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
		if (segundaOpcion.precioViaje(cliente , kms) < primeraOpcion.precioViaje(cliente , kms)
			and (primeraOpcion.precioViaje(cliente , kms) - segundaOpcion.precioViaje(cliente , kms) > 30)){
			return segundaOpcion
		}
		else {
			return primeraOpcion
		}
	}
}