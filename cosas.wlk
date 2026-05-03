object heladera {
    method precio() = 200000
    method esElectrodomestico() = true
    method esComida() = false
}

object cama {
    method precio() = 80000
    method esElectrodomestico() = false
    method esComida() = false
}

object tiraDeAsado {
    method precio() = 3500
    method esElectrodomestico() = false
    method esComida() = true
}

object paqueteDeFideos {
    method precio() = 500
    method esElectrodomestico() = false
    method esComida() = true
}

object plancha {
    method precio() = 1200
    method esElectrodomestico() = true
    method esComida() = false
}

object kiloDeMilanesasRebozadas {
    method precio() = 2600
    method esElectrodomestico() = false
    method esComida() = true    
}

object botellaDeSalsaDeTomate {
    method precio() = 900
    method esElectrodomestico() = false
    method esComida() = true    
}

object microondas {
    method precio() = 42000
    method esElectrodomestico() = true
    method esComida() = false    
}

object computadora {
    method precio() = dolar.precioDeVenta(500)
    method esElectrodomestico() = false
    method esComida() = true    
}

object dolar {
    method precioDeVenta(unPrecio) = unPrecio * 1400
}

object packDeComida {
    const comidas = [tiraDeAsado, paqueteDeFideos]

    method precio() = self.sumaDePrecioDeComidas(comidas)
    method esElectrodomestico() = false
    method esComida() = true  

    method sumaDePrecioDeComidas(unaLista) {
        return unaLista.sum({a => a.precio()})
    }
    method agregarComida(unaComida) {
        comidas.add(unaComida)
    }
}

