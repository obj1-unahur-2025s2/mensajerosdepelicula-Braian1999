import mensajero.*

object paquete {
    var importePagado = 0
    method estaPago() = 50 >= importePagado
    method pagarPaquete(cantidad) {importePagado += cantidad}

    method puedeSerEnviado(unMensajero, unDestino) = unDestino.puedePasar(unMensajero)
}
object paquetito {
    method estaPago() = true

    method puedeSerEnviado(unMensajero, unDestino) = unDestino.puedePasar(unMensajero)
}
object paquetonViajero {
    var importePagado = 0
    const destinos = [puente, matrix]

    method estaPago() = 100 >= importePagado
    method puedeSerEnviado(unMensajero, unDestino) = self.elMensajeroPuedePasarPorTodosLosDestinos(unMensajero) and self.estaPago()
    method elMensajeroPuedePasarPorTodosLosDestinos(unMensajero) = destinos.all({x => x.puedePasar(unMensajero)})

    method pagarPaquete(cantidad) {importePagado += cantidad}

}