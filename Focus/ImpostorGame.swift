//
//  ImpostorGame.swift
//  Focus
//
//  Created by davidzaratel on 10/3/21.
//

import Foundation
import UIKit


class ImpostorGame{
    //Atributos de la Clase
    //Nivel del juego
    var level = 1
    //Target sera el indice del boton impostor
    var target = 0
    //El siguiente arreglo contendra los tags de los botones de las plantas
    var plantButtons = [0,1,2,3,4,5,6,7,8,9,10,11]
    //El siguiente arreglo contiene los diferentes indices de las imagenes que pueden ser utilziadas
    var plantImages = [1,2,3,4,5,6,7]
    
    //Avanza de nivel
    func nextLevel(){
        level = level + 1
    }
    
    //Se restauran los valores iniciales del juego
    func initializeArrays(){
        plantButtons = [0,1,2,3,4,5,6,7,8,9,10,11]
        plantImages = [1,2,3,4,5,6,7]
    }
    
    
}
