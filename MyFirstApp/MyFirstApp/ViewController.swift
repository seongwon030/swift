//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 서성원 on 2024/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        mainLabel.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        mainLabel.text = "안녕하세요"
        
        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        mainLabel.textAlignment = NSTextAlignment.center
    }
    

}

