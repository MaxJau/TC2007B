//
//  ViewController.swift
//  ApplicacionMultmedia
//
//  Created by Max Jauregui on 19/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func navegarAImagen(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let imageViewController = storyBoard.instantiateViewController(withIdentifier: "imagenViewController")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: false)
    }
}

