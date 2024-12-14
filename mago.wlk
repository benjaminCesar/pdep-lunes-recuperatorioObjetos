class Mago {
    const nombre
    const resistenciaMagica
    var puntosDeEnergiaMagica
    var nivelDeExperiencia
    const objetosMagicos = []
    const poderInnato //un indice del 1 al 10

    method nombre() {
       return nombre 
    }

    method resistenciaMagica() {
        return resistenciaMagica
    }

    method puntosDeEnergiaMagica(){
        return puntosDeEnergiaMagica
    }
    
    method nivelDeExperiencia(unNivel){
        return unNivel == nivelDeExperiencia
    }

    method poderTotal() {
        return objetosMagicos.sum({unObjeto => unObjeto.poderTotaldelObjeto()}) * poderInnato
    } 
}