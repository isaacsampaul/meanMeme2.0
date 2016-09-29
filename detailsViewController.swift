//
//  detailsViewController.swift
//  mean meme 1.0
//
//  Created by Isaac sam paul on 9/29/16.
//  Copyright © 2016 Isaac sam paul. All rights reserved.
//

import Foundation
import UIKit

class detailsViewController: UIViewController
{
    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage!
    
    override func viewWillAppear(_ animated: Bool) {
        self.imageView.image = image
    }
    
    @IBAction func shareButton(_ sender: AnyObject) {
        let image1 = self.imageView.image
        let sharedImage = UIActivityViewController(activityItems: [image1], applicationActivities: nil)
        self.present(sharedImage,animated: true,completion: nil)    }

}
