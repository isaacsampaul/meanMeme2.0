//
//  sentMemeTabView.swift
//  mean meme 1.0
//
//  Created by Isaac sam paul on 9/27/16.
//  Copyright © 2016 Isaac sam paul. All rights reserved.
//

import Foundation
import UIKit

class sentMemeTabView: UITableViewController
{
    
    var controller: [meme]! = nil
    var selectedMeme: UIImage!
    
    override func viewWillAppear(_ animated: Bool) {
        controller = (UIApplication.shared.delegate as! AppDelegate).meme
        self.tableView.reloadData()
    }
    
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return controller.count
    }
    
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! sentMemeTabViewCell
        cell.memeImage.image = self.controller[indexPath.row].memedImage
        return cell
        
        
    }
    
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedMeme = self.controller[indexPath.row].memedImage
        performSegue(withIdentifier: "detailsViewController" , sender: self)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsViewController"
        {
            let nav = segue.destination as! UINavigationController
            let controller = nav.topViewController as! detailsViewController
            controller.image = self.selectedMeme
        }
    }
    
        
       
}
