//
//  Download.swift
//  CustomDelegate
//
//  Created by Chhaileng Peng on 1/5/19.
//  Copyright © 2019 Chhaileng Peng. All rights reserved.
//

import UIKit

protocol DownloadDelegate {
    func didFinishDownload(message: String)
    func didFinisDownloadImage(image: UIImage)
}

class Download {
    var delegate: DownloadDelegate?
    
    func startDownload() {
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (_) in
            print("Download completed after 5 seconds")
            self.delegate?.didFinishDownload(message: "Download Completed!")
        }
    }
    
    // https://wallpapersite.com/images/wallpapers/leaves-1024x768-dark-4k-5k-17079.jpg
    func startDownloadImage(imageUrl: String) {
        DispatchQueue.main.async {
            let data = try? Data(contentsOf: URL(string: imageUrl)!)
            let image = UIImage(data: data!)
            self.delegate?.didFinisDownloadImage(image: image!)
        }
    }
}
