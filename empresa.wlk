import mensajero.*
import paquetes.*
object empresaDeMensajeria {
    const mensajeros = []
    method mensajeros() = mensajeros
    method esGrandeLaMensajeria() = mensajeros.size() > 2
    method elPrimeroPuedeEntregarPaquete(unDestino) = unDestino.puedePasar(self.elPrimerMensajero()) and paquete.estaPago()
    method elPrimerMensajero() = mensajeros.first()
    method pesoDelUltimoMensajero() = self.elUltimoMensajero().peso()
    method elUltimoMensajero() = mensajeros.last()


    method contratarUnMensajero(unMensajero) {mensajeros.add(unMensajero)}
    method despedirMensajero(unMensajero) {mensajeros.remove(unMensajero)}
    method desPedirATodosLosMensajeros() {mensajeros.clear()}
    
}