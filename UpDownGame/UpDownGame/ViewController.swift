//
//  ViewController.swift
//  UpDownGame
//
//  Created by 서성원 on 2024/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 숫자 선택
    var comNumber = Int.random(in: 1...10)
    
    // 내가 선택한 숫자를 담는 변수
    var myNumber : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 메인 레이블에 선택하세요 표시
        mainLabel.text = "선택하세요"
        // 숫자 레이블에 ""
        numLabel.text = ""
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        // 버튼 숫자 가져와야함
        guard let numString = sender.currentTitle else {return}
        // 숫자에 따라 레이블이 변하도록
        numLabel.text = numString
        // 선택한 숫자를 변수에 저장 (문자열을 숫자로 변환하고 저장)
        guard let num = Int(numString) else {return}
        myNumber = num
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 컴퓨터 숫자와 선택한 숫자 비교해서 업/다운/빙고 메인 레이블에 표시
        if comNumber > myNumber {
            mainLabel.text = "Up"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo😎"
        }
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 메인레이블이 "선택하세요"로 바뀜
        mainLabel.text = "선택하세요"
        // 숫자 레이블을 ""로 초기화
        numLabel.text = ""
        // 컴퓨너 숫자 다시 선택
        comNumber = Int.random(in: 1...10)
    }
    
    
    
}

