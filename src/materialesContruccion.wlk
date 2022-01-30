class Producto {
	const property metalico
	const property arido
	const property peso	
	
	
}

/* Resolver el enunciado aquí */


class Vendedor {
	var property listaDeVendidos = []
	
method vender(unProducto) {
     if(not self.validar(unProducto)) self.error('ERROR ')
     listaDeVendidos.add(unProducto)
     }
     

    method validar(unProducto) 
	
}


//  Vendedoras de Hierros Burocráticas

class VendedoresBurocraticos inherits VendedoraDeHierros {
      var consultor
      
     override method validar(unProducto) = super(unProducto) and consultor.productoAprobado(unProducto)

}

class Consultor {
var property listaProductosAprobados = []

	method productoAprobado(unProducto)
}

class PorPeso inherits Consultor{
	var property pesoMaximo	
	
   override method productoAprobado(unProducto) = unProducto.peso() < pesoMaximo
	
}

class PorUnidad inherits Consultor {
	
	override method productoAprobado(unProducto) = listaProductosAprobados.contains(unProducto)
    method agregarProductoAlista(unProducto) {listaProductosAprobados.add(unProducto)}
}











// FERRETERIA 
class Ferreteria inherits VendedoraDeHierros{
	const property listaDeStock = []
	
	override method vender(unProducto) {
		 super(unProducto)  
		 listaDeStock.remove(unProducto) }
    
	override method validar(unProducto) = super(unProducto) and listaDeStock.contains(unProducto)
 
    method agregarStock(unProducto) = listaDeStock.add(unProducto)
    method stock (unProducto) = listaDeStock.count(unProducto)              
}

/// Clases VENDEDORES .
class VendedoraDeHierros inherits Vendedor{
	
	override method validar(unProducto) = unProducto.metalico()

}

class Corralon inherits Vendedor{
	
	override method validar(unProducto) = unProducto.metalico() or unProducto.arido()
}

class CorralonMayorista inherits Vendedor {
	
	override method validar(unProducto) = unProducto.peso() > 70
}