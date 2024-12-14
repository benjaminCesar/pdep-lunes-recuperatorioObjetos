class ObjetoMagico {
    const poderBase
    const magoDuenio

    method poderExtraPorObjeto()

    method poderTotalDelObjeto() {
        return poderBase + self.poderExtraPorObjeto()
    }

    method nombreDeMagoPoseedorDelobjeto() {
        return magoDuenio.nombre()
    }

    method resistenciaDeMagoPoseedorDelObjeto() {
        return magoDuenio.resistenciaMagica()
    }
}

class Varita inherits ObjetoMagico {

    override method poderExtraPorObjeto() {
      if(self.nombrePoderoso()){
        return poderBase * 0.5
      } else {
        return 0
      }
    }
    
    method nombrePoderoso() {
        return self.nombreDeMagoPoseedorDelobjeto().size().even()
    }
}

class TunicaComun inherits ObjetoMagico {

    override method poderExtraPorObjeto() {
        return  2 * self.resistenciaDeMagoPoseedorDelObjeto()
    } 
}

class TunicaEpica inherits ObjetoMagico {

    override method poderExtraPorObjeto() {
        return 2 * self.resistenciaDeMagoPoseedorDelObjeto() + 10
    } 
}

class Amuleto inherits ObjetoMagico {
    override method poderTotalDelObjeto() {
        return 200
    }
}

class Ojota inherits ObjetoMagico {

    override method poderExtraPorObjeto() {
        return self.nombreDeMagoPoseedorDelobjeto().size() * 10
    }
}