//
//  sentMemeCollectionView.swift
//  mean meme 1.0
//
//  Created by Isaac sam paul on 9/27/16.
//  Copyright © 2016 Isaac sam paul. All rights reserved.
//

import Foundation
import UIKit

class sentMemeCollectionView : UICollectionViewController
{
    let controller: [meme] = (UIApplication.shared.delegate as! AppDelegate).meme
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
   
    override func viewWillAppear(_ animated: Bool) {
        let space:CGFloat = 3.0
        let dimension1 = (view.frame.size.width - (2 * space))/3.0
        let dimension2 = (view.frame.size.height - (2 * space))/3.0
        flowLayout.minimumLineSpacing = space
        flowLayout.minimumInteritemSpacing = space
        flowLayout.itemSize = CGSize(width: dimension1, height: dimension2)
    }
    
   override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return controller.count
    }
    
   override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! sentMemeCollectionViewCell
        cell.imageView.image = self.controller[indexPath.row].memedImage
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "detailsViewController") as! detailsViewController
        controller.image = self.controller[indexPath.row].memedImage
        performSegue(withIdentifier: "detailsViewController", sender: self)
    }
    
    
}
