class NivelPorExperiencia {
    const nivelDeExperiencia

    
    method puedeVencerA(unMago, otroMago) {
        return nivelDeExperiencia.puedeVencerA(unMago, otroMago)
    }

    method ganarDesafioA(unMago,otroMago, unaCantidad) {
        if(self.puedeVencerA(unMago, otroMago)){
            self.robarPuntosDeEnergiaMagica(unMago,otroMago, unaCantidad)
        } else {
            self.perderPuntosDeEnergiaMagica(unMago, unaCantidad)
        }
    }

    method robarPuntosDeEnergiaMagica(unMago,otroMago, unaCantidadCantidad){
        otroMago.puntosDeEnergiaMagica() += self.cantidadDePuntosDeEnergiaMagicaPerdida(unMago, unaCantidad)
    }

    method cantidadDePuntosDeEnergiaMagicaPerdida(unMago, unaCantidad) {
        return 
    }

    method perderPuntosDeEnergiaMagica(unMago, unaCantidad) {
        nivelDeExperiencia.perderPuntosDeEnergiaMagica(unMago, unaCantidad)
    }


    object aprendiz {
    
        method puedeVencerA(unMago, otroMago) {
            return unMago.poderTotal() <= otroMago.resistenciaMagica()
        }

        method perderPuntosDeEnergiaMagica(unMago, unaCantidad) {
            unMago.puntosDeEnergiaMagica() -= puntosDeEnergiaMagica().div(2)
        }
    }

    object veterano {

        method puedeVencerA(unMago, otroMago) {
            return unMago.poderTotal() < otroMago.resistenciaMagica() * 1.5
        }

        method perderPuntosDeEnergiaMagica(unMago, unaCantidad) {
            unMago.puntosDeEnergiaMagica -= unMago.puntosDeEnergiaMagica.div(4)
        }
    }

    object inmortal {
    
        method puedeVencerA(unMago, otroMago) {
            return true
        }
    }
} 
