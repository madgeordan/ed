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
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chosenEmoji.text = emoji.stringEmoji
        followedName.text = emoji.category
        followedDefinition.text = emoji.definition
    }
}
