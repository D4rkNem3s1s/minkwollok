object rolando {

    var property hogar = castilloDePiedra
    const mochila = #{}
    var property espacioMochila = 2
    var property poderBase = 0

 
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
        castilloDePiedra.guardarEnCasa(mochila)
        mochila.clear()
    }


    method poseciones(){
        return mochila.union(hogar.almacenimientoDelCastillo())
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
    const property  almacenimientoDelCastillo = #{}

    method guardarEnCasa(objetos){
        almacenimientoDelCastillo.addAll(objetos)
    }



}
