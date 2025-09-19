object puente {
    method puedePasar(unMensajero) = unMensajero.peso() <= 1000
}
object matrix {
    method puedePasar(unMensajero) = unMensajero.puedeLlamar()
}

object roberto {
    var veiculo = bicicleta

    method peso() = 90 + veiculo.peso()
    method puedeLlamar() = false

    method cambiarVeiculo(unVeiculo) {veiculo = unVeiculo}
}

object chuckNorris {
    method peso() = 80
    method puedeLlamar() = true  
}

object neo {
    var tieneCredito = true
    method peso() = 0
    method puedeLlamar() = tieneCredito
}

object bicicleta {
    method peso() = 5
}

object camion {
    var acople = 1
    method peso() = acople * 500
}