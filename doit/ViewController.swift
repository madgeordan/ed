//
//  ViewController.swift
//  doit
//
//  Created by George Lushch on 6/13/17.
//  Copyright © 2017 madgeordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "segue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let show = segue.destination as! ShowViewController
        show.emoji = sender as! Emoji
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji0 = Emoji()
        emoji0.stringEmoji = "😇"
        emoji0.definition = "def"
        emoji0.category = "cat"
        emoji0.birthyear = 2010
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😁"
        emoji1.definition = "def"
        emoji1.category = "cat"
        emoji1.birthyear = 2010
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤡"
        emoji2.definition = "def"
        emoji2.category = "cat"
        emoji2.birthyear = 2010
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤠"
        emoji3.definition = "def"
        emoji3.category = "cat"
        emoji3.birthyear = 2010
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😡"
        emoji4.definition = "def"
        emoji4.category = "cat"
        emoji4.birthyear = 2010
        
        return [emoji0, emoji1, emoji2, emoji3, emoji4]
    }
    
}
