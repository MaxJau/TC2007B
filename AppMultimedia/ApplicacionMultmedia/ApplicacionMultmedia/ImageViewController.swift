//
//  ImageViewController.swift
//  ApplicacionMultmedia
//
//  Created by Max Jauregui on 19/10/22.
//
import UIKit
import AVKit

class ImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func mostrarVideo(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let imageViewController = storyBoard.instantiateViewController(withIdentifier: "videoViewController")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: false)
    }
}
