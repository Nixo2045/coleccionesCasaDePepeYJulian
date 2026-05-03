object cuentaCorriente {
    var saldo = 3000

    method depositar(importe) {
        saldo += importe
    }
    method extraer(importe) {
        saldo -= importe
    }
    method saldo() = saldo
}

object cuentaConGastos {
    var saldo = 2000000

    method depositar(importe) {
        saldo += importe - 200
    }
    method extraer(importe) {
        if (importe > 10000) {
            saldo -= importe * 0.2
        }
        else {
            saldo -= importe + 200
        }
    }
    method saldo() = saldo
}

object cuentaCombinada {
    // pasa a la primaria
    method depositar(importe) {       
        cuentaCorriente.depositar(importe)
    }
    // si la primera tiene saldo sino pasa a la secundaria que siempre tiene
    method extraer(importe) {  
        if(cuentaCorriente.saldo() >= importe) {
            cuentaCorriente.extraer(importe)
        }
        else {
            cuentaConGastos.extraer(importe)
        }
    }
}