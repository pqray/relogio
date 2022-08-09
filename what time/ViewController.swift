//
//  ViewController.swift
//  what time
//
//  Created by Rayssa Ribeiro on 09/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
            (_) in
            let date = Date()
            
            let dateFormat = DateFormatter()
            dateFormat.dateFormat = "HH:MM"
            
            let actualTime = dateFormat.string(from: date)
            
            self.timeLabel.text = actualTime
        }
        
    }


}

