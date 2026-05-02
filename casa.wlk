import cosas.*
object casa {
    const cosas = []

    method comprar(cosa) {
        cosas.add(cosa)
    }
    method cantidadDeCosasAComprar() {
        return cosas.size()
    }
    method tieneComida() {
        return cosas.any({ a => a.esComida()  })
    }
    method vieneDeEquiparse() {
        if(cosas.isEmpty()) {
            return false
        }
        else {
            cosas.last().esElectrodomestico() or cosas.last().precio() > 50000
        }
    }
    method esDerrochona() {
        return self.sumaDePrecioDeCosas() >= 90000
    }
    method sumaDePrecioDeCosas() {
        return cosas.sum({a => a.precio()})
    }
    method compraMasCara() {
        return cosas.any({ a => a.precio().max() })
    }
    method electrodomesticosComprados() {
        return cosas.filter( {a => a.esElectrodomestico()} )
    }
    method malaEpoca() {
        return cosas.all({ a => a.esComida() })
    }
    method queFaltaComprar(lista) {
        return lista.filter({ a => not self.fueComprado(a) }) 
    }
    method fueComprado(unaCosa) {
        return cosas.contains(unaCosa)
    }

}