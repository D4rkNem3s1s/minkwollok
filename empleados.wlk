//Mensajeros
object neo{
	
	var property credito = false
	const peso = 0

	method puedeLlamar() = self.credito()
	method pesoTotal(){
		return peso
	}
}

object jeanGray{
	const property puedeLlamar = true
	const peso = 65



	method pesoTotal(){
		return peso 
	}
}

object saraConnor{
	const property puedeLlamar = false
	var property peso = 70
	var property vehiculo = moto

	method pesoTotal(){
		return peso + vehiculo.pesoTotal()
	}

}

//Destinos

object brooklyn{

	method puedeLlegar(_mensajero){
		return _mensajero.pesoTotal() <= 1000
	}

}

object matrix{
	method puedeLlegar(_mensajero){
		return _mensajero.puedeLlamar()
	}
}

//paquete
object paquete{
	var property estaPago = false

	method puedeLlegar(_mensajero, _destino){
		return estaPago && _destino.puedeLlegar(_mensajero)
	}

}

//vehiculos

object moto{
	const peso = 100

	method pesoTotal(){
		return peso
	}
}

object camion{
	const peso = 500
	var property cantidadAcoplados = 0

	method pesoTotal(){
		return peso + cantidadAcoplados * 500
	}
}
