object registroProduccion {
    const registroPiezas = []
    
    method agregarAlRegistro(cantidadDePiezas){
        registroPiezas.add(cantidadDePiezas)
    }
    
    method quitarAlRegistro(cantidadDePiezas){
        registroPiezas.remove(cantidadDePiezas)
    }
    
    method algunDiaSeProdujo(cantidad){
        return registroPiezas.contains(cantidad)
    }
    
    method maximoValorDeProduccion(){
        return registroPiezas.max()
    }
    
    method valoresDeProduccionPares(){
         return registroPiezas.filter({r => r.even()})   
    }
    
    method produccionEsAcotada(n1,n2){
        return registroPiezas.all{r => r.between(n1, n2)}
    }
    
    method produccionesSuperioresA(cuanto){
        return registroPiezas.filter({e => e > cuanto})
    }
    
    method produccionesSumandoNo(){
        registroPiezas.map({r => r + n})
    }
    
    method totalProducido(){
        return registroPiezas.sum()
    }
    
    method ultimoValorDeProduccion(){
        return registroPiezas.last()
    }
    
    method primerValorDeProduccion(){
        return registroPiezas.first()
    }
    
    method cantidadProduccionesMayorALaPrimera(){
        return registroPiezas.count({e => e > self.primerValorDeProduccion()})
    }
    
}

