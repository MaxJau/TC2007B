//
//  VideoViewController.swift
//  ApplicacionMultmedia
//
//  Created by Max Jauregui on 19/10/22.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mostrarVideo(_ sender: UIButton) {
        let ruta = Bundle.main.path(forResource: "BigBuckBunny", ofType: "mp4")
        let player = AVPlayerViewController()
        let videoUrl = URL(filePath: ruta!)
        let video = AVPlayer(url: videoUrl)
        player.player = video
        present(player, animated: true, completion: {
            video.play()
        })
    }
    
    @IBAction func regresoMain(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let imageViewController = storyBoard.instantiateViewController(withIdentifier: "main")
        imageViewController.modalPresentationStyle = .fullScreen
        self.present(imageViewController, animated: false)
    }
    
    
    
}
