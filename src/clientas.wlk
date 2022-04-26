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
	method cambiarEstadoActual(){
		estado = !estado
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
	method trabajarPara(clienta){
		empleadora = clienta
		return empleadora
	}
	method precioPorKm(){	
		return(empleadora.precioPorKm() - 3)
	}
}
