//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 서성원 on 2024/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    @IBOutlet weak var myButton: UIButton!
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        mainLabel.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        mainLabel.text = "안녕하세요"
        
        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        mainLabel.textAlignment = NSTextAlignment.center
        
        myButton.backgroundColor = UIColor.yellow
        myButton.setTitleColor(.black, for: UIControl.State.normal)
    }
    

}

