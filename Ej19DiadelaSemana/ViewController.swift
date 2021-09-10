//
//  ViewController.swift
//  Ej19DiadelaSemana
//
//  Created by Mañanas on 6/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diastr: UITextField!
    @IBOutlet weak var messtr: UITextField!
    @IBOutlet weak var aniostr: UITextField!
    @IBOutlet weak var resultadostr: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        
    }
    
    private func alertView(mensaje: String){
        let alert = UIAlertController(title: "Atencion Lee Bien lo que te piden!!!", message: mensaje, preferredStyle: .alert)
        let buttonAlert = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
            alert.addAction(buttonAlert)
        self.present(alert, animated: true, completion: nil)
  }
    
    private func setupView(){
        title = "App dia que nacistes"
        diastr.placeholder = "Inserta tu dia de nacimiento"
        messtr.placeholder = "Inserta tu mes de nacimiento"
        aniostr.placeholder = "Inserta tu año de nacimeinto"
    }


    
    @IBAction func mostrarDia(_ sender: Any) {
        
        guard let dia = Int(diastr.text!) else {alertView(mensaje: "Inserta un numero para el día")
            return }
  
        
        guard let mes = Int(messtr.text!) else {alertView(mensaje: "Inserta un numero para el mes")
        return }
    
        guard let anio = Int(aniostr.text!) else {alertView(mensaje: "Inserta un numero para el anio")
        return }
    
        let miNacimiento = Nacimiento(dia: dia, mes: mes, anio: anio)
        let resultado: String = miNacimiento.calculardia(dia: dia, mes: mes, anio: anio)
        resultadostr.text = "El dia de la semana es : \(resultado)"
        resultadostr.textColor=UIColor.red
    
    }
}

