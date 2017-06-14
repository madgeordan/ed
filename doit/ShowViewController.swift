//
//  ShowViewController.swift
//  doit
//
//  Created by George Lushch on 6/13/17.
//  Copyright © 2017 madgeordan. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController {
    
    
    @IBOutlet weak var chosenEmoji: UILabel!
    @IBOutlet weak var followedName: UILabel!
    @IBOutlet weak var followedDefinition: UILabel!
    
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chosenEmoji.text = emoji
        if chosenEmoji.text == "😇" {
            followedName.text = "1"
        }
        if chosenEmoji.text == "😁" {
            followedName.text = "2"
        }
        if chosenEmoji.text == "🤡" {
            followedName.text = "3"
        }
        if chosenEmoji.text == "🤠" {
            followedName.text = "4"
        }
        if chosenEmoji.text == "😡" {
            followedName.text = "5"
            
        }
        
    }
    
}
