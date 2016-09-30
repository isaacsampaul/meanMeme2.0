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
    
    let controller: [meme] = (UIApplication.shared.delegate as! AppDelegate).meme
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
        print("working")
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
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "detailsViewController") as! detailsViewController
        controller.image = self.controller[indexPath.row].memedImage
        if let navigationcontroller = self.navigationController
        {
            navigationcontroller.pushViewController(controller, animated: true)
        }
    }
        
    
    
        
       
}
