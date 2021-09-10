//
//  Nacimieto.swift
//  Ej19DiadelaSemana
//
//  Created by Mañanas on 6/9/21.
//

import Foundation



class Nacimiento {
    var dia:Int
    var mes:Int
    var anio:Int
   

    init(dia:Int , mes:Int, anio:Int){
        self.dia = dia
        self.mes = mes
        self.anio = anio
     
        
    }
    
    func calculardia(dia:Int, mes:Int, anio:Int) -> String {
        var diasSemana=["Sábado", "Domingo", "Lunes", "Martes","Miércoles", "Jueves", "Viernes"]
        print("----- CALCULO DÍA DE NACIMIENTO-----")
        if mes == 1{
            self.mes = 13
            self.anio -= 1
        }else if mes == 2{
            self.mes = 14
            self.anio -= 1
        }
        let paso1 = Int(((mes + 1) * 3) / 5)
        let paso2 = Int(anio / 4)
        let paso3 = Int(anio / 100)
        let paso4 = Int(anio / 400)
        let paso5 = Int(dia + 2 * mes + anio + paso1 + paso2 - paso3 + paso4 + 2)
        let paso6 = Int(paso5 / 7)
         
        let resultadoFinal = Int(paso5 - paso6 * 7)
         
        let resultado:String = diasSemana[resultadoFinal]
        
        print("Su día de nacimiento fué:", resultado)
        
        return resultado
    
         
        }
}
 


 
 


