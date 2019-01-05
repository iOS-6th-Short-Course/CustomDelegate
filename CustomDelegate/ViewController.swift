//
//  ViewController.swift
//  CustomDelegate
//
//  Created by Chhaileng Peng on 1/5/19.
//  Copyright © 2019 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DownloadDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func buttonClick(_ sender: Any) {
        DispatchQueue.main.async {
            self.download.startDownloadImage(imageUrl: "https://wallpapersite.com/images/wallpapers/leaves-1024x768-dark-4k-5k-17079.jpg")
        }
    }
    
    var download: Download!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        download = Download()
        download.delegate = self
//        download.startDownload()
        
        
    }
    
    func didFinishDownload(message: String) {
        statusLabel.text = message
    }
    
    func didFinisDownloadImage(image: UIImage) {
        statusLabel.text = "Download image completed!!"
        imageView.image = image
    }


}

