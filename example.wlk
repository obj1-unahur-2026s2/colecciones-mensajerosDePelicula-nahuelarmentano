
object empresaMensajeria {
  const mensajeros = []

  method contratar(unMensajero) {mensajeros.add(unMensajero)}
  method despedir(unMensajero) {mensajeros.remove(unMensajero)}
  method reformaLaboral() {mensajeros.clear()}
  method esMensajeriaGrande() {mensajeros.size() > 2}
  method puedeEntregarElPrimero(unPaquete) {return unPaquete.puedeSerEntregadoPor(mensajeros.first())}
  method pesoDelUltimo() {return mensajeros.last().peso()}
}

object roberto {
  var peso = 90
  var transporte = bicicleta

  method cambiarPeso(unPeso) {peso = unPeso}
  method cambiarTransporte(unTransporte) { transporte = unTransporte }

  method peso() = peso + transporte.peso()
  method puedeLlamar() = false
}

object chuckNorris {
  method peso() = 80
  method puedeLlamar() {return true}
}

object neo {
  var neoTieneCredito = true
  method peso() = 0
  method noTieneCredito() {neoTieneCredito = false}
  method tieneCredito() {neoTieneCredito = true}
  method puedeLlamar() {return neoTieneCredito}
}

object camion {
  var cantidadDeAcoplados = 1
  method peso() { return 500 * cantidadDeAcoplados }
  method cambiarCantidadAcoplados(nuevaCantidadDeAcoplados) {cantidadDeAcoplados = nuevaCantidadDeAcoplados}
}

object bicicleta {
 method peso() = 5
}

object puenteDeBrooklyn {
  method puedeLlegar(unMensajero) {return unMensajero.peso() <= 1000}
}

object laMatrix {
  method puedeLlegar(unMensajero) {return unMensajero.puedeLlamar()}
}

object paquete {
  var estaPago = true
  var destino = laMatrix

  method pagarPaquete() {estaPago = true}
  method paqueteSinPagar() {estaPago = false}
  method cambiarDestino(unDestino) {destino = unDestino}

  method puedeSerEntregadoPor(unMensajero) =
    estaPago && destino.puedeLlegar(unMensajero)
}
