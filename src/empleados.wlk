object galvan {
	var sueldo = 15000
	var dinero=0
	var deuda=0
	
	method sueldo() { return sueldo	}
	method sueldo(nuevoValor) {	sueldo = nuevoValor	}	//Renovar Sueldo
	
	method cobrarSueldo(monto){
		if(deuda<monto){
			dinero=+monto-deuda
			deuda=0
		}else{
			deuda-=monto
		}
	}
	
	method gastar(cuanto){
		if(dinero<cuanto){
			deuda+=cuanto-dinero
			dinero=0
		}else{
			dinero-=cuanto
		}
	}
	method totalDeuda(){
		return(deuda)
	}
	method totalDinero(){
		return(dinero)
	}
}

object baigorria {
	var todoLoQueCobro=0
	var cantidadEmpanadasVendidas = 0
	const montoPorEmpanada = 15
	
	method venderEmpanadas(cantidad) {
		cantidadEmpanadasVendidas += cantidad
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(monto){
		todoLoQueCobro+=monto
	}
}

object gimenez {
	var dinero = 300000

	method importeActual() { return dinero	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo(empleado.sueldo())
	}
}

