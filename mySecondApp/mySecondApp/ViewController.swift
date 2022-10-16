//
//  ViewController.swift
//  mySecondApp
//
//  Created by Alumno on 30/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numeroSuperior: UITextField!
    
    @IBOutlet weak var numeroInferior: UITextField!
    
    @IBAction func sumar(_ sender: Any) {
        let sumarUno = Float(numeroSuperior.text!)
        let sumarDos = Float(numeroInferior.text!)
        var mensaje = "Favor de completar ambos campos."
        if (sumarUno != nil && sumarDos != nil){
        let resultado = (sumarUno!)+(sumarDos!)
            mensaje = String(resultado)
        }
        MostrarAlerta(mensaje: mensaje, titulo: "Sumar")
    }
    
    @IBAction func restar(_ sender: Any) {
        let restarUno = Float(numeroSuperior.text!)
        let restarDos = Float(numeroInferior.text!)
        var mensaje = "Favor de completar ambos campos."
        if (restarUno != nil && restarDos != nil){
        let resultado = (restarUno!)-(restarDos!)
            mensaje = String(resultado)
        }
        MostrarAlerta(mensaje: mensaje, titulo: "Restar")
    }
    
    
    @IBAction func multiplicar(_ sender: Any) {
        let multiplicarUno = Float(numeroSuperior.text!)
        let multiplicarDos = Float(numeroInferior.text!)
        var mensaje = "Favor de completar ambos campos."
        if (multiplicarUno != nil && multiplicarDos != nil){
        let resultado = (multiplicarUno!)*(multiplicarDos!)
            mensaje = String(resultado)
        }
        MostrarAlerta(mensaje: mensaje, titulo: "Multiplicacion")
    }
    
    @IBAction func dividir(_ sender: Any) {
        let dividendoUno = Float(numeroSuperior.text!)
        let divisorUno = Float(numeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."
        if (dividendoUno != nil && divisorUno != nil){
        let resultado = (dividendoUno!)/(divisorUno!)
            mensaje = String(resultado)
        }
        MostrarAlerta(mensaje: mensaje, titulo: "Division")
    }
    
    @IBAction func botonUnoClick(_ sender: Any) {
        //usuarioTextField.text
        MostrarAlerta(mensaje: usuarioTextField.text!, titulo: "Texto")
    }
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usuarioTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tituloLabel.text = "Segunda App"
        tituloLabel.textColor = UIColor(red: 36/255, green: 25/255, blue: 80/255, alpha: 1.0)
    }

    func MostrarAlerta(mensaje: String, titulo: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
}

