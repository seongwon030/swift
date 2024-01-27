//
//  ViewController.swift
//  DiceGame
//
//  Created by 서성원 on 2024/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
                                
                                
                                
    // 앱에 들어오면 가장 먼저 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
       
        firstImageView.image = diceArray[1]
        secondImageView.image = diceArray[2]
    }


    @IBAction func rollButtontapped(_ sender: UIButton) {
        
        // 첫 번째 이미지뷰의 이미지를 랜덤으로 변경
        firstImageView.image = diceArray.randomElement()

        // 두 번째 이미지뷰의 이미지를 랜덤으로 변경
        secondImageView.image = diceArray.randomElement()
    }
    
}

