object rolando {

    const mochila = #{}
    var property espacioMochila = 2
 
    method espacioEnMochila(){
        return mochila.size()
    }

    method hayEspacio(){
        return self.espacioEnMochila() < espacioMochila
    }
    
    method guardarObjeto(objeto){
        if (self.hayEspacio()){
            mochila.add(objeto)
        }
    }

    method sacarObjeto(objeto){
        mochila.remove(objeto)
    }


    method llegaACasa(){
        
    }
}


object espadaDelDestino{

}

object libroDeHechizos {
  
}

object collarDivino {

}

object armaduraDeAceroValyrio{

}

object castilloDePiedra{
    const almaceniementoDelCastillo = #{}

    method guardarObjeto(objeto) {
        almaceniementoDelCastillo.add(objeto)
    }



}
