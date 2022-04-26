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
	method reemplazarA(remisera){
		remiseraReemplazada = remisera
		return remiseraReemplazada
	}
	method precioViaje(cliente , km){
		precioACobrar = remiseraReemplazada.precioViaje(cliente , km)
		return precioACobrar
	}
}

