class Gremio {
    var miembros = #{}

   method poderTotalGremio() {
        return miembros.sum({unMiembro => unMiembro.poderTotal()})
   }

   method reservaEnergiaMagica() {
        return miembros.sum({unMiembro => unMiembro.energiaMagica()})
   }

   method liderGremio() {
        return miembros.max({unMiembro => unMiembro.poderTotal()})
   }

   method desafiarA(otrosMagos) {
        if(self.puedeDerrotarALos(otrosMagos)){
            self.aumentarReservaLider()
        }
   }

   method puedeDerrotarALos(otrosMagos) {
        return 
   }

   method aumentarReservaLider() {

   }

   method crearGremio() {
        if (self.cantidadMiembros() < 2){
            throw new NoPuedenCrearGremioPorMiembrosinsuficientesException()
        }
   }

   method cantidadMiembros() {
        return miembros.size()
   }
}