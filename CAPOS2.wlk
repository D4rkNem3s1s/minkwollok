object rolando {

    var property hogar = castilloDePiedra
    const mochila = #{}
    var property espacioMochila = 2
    var property poderBase = 0
    var property poderDeBatalla = 0
    const property historialEncontrado = []

    var property batallas = 0

    method espacioEnMochila(){
        return mochila.size()
    }

    method hayEspacio(){
        return self.espacioEnMochila() < espacioMochila
    }
    
    method guardarObjeto(objeto){
        historialEncontrado.add(objeto)
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
    method posecionesConsigo(){
        return mochila
    }

    
}


object espadaDelDestino{
    var property usosDeEspada = 0

    method usar(){
        usosDeEspada += 1
        
    }

    method poder(){
        if (usosDeEspada >= 1){
            return rolando.poderBase() / 2
        } else {
            return rolando.poderBase()
        }
    }
}

object libroDeHechizos {
    const property poder = 0
  
}

object collarDivino {
    const property poder = 0

}

object armaduraDeAceroValyrio{
    const property poder = 0
}

object castilloDePiedra{
    const property  almacenimientoDelCastillo = #{}

    method guardarEnCasa(objetos){
        almacenimientoDelCastillo.addAll(objetos)
    }



}








/*

Object tolando{

const artefactos
method poderArtefactos(){
const miTransformer = {art => art.poder()}
return artefactos.sum(miTransformer)
}


}





Object tolando{

const artefactos
method poderArtefactos(){
const miTransformer = {art => art.poder()}
return artefactos.sum({art => art.poder()})



artefactos.any({art=> artPoder() > 1000})
}


}

*/
