//
//  main.swift
//  RandomBingo
//
//  Created by 서성원 on 2024/02/07.
//

import Foundation

var computerChoice = Int.random(in: 1...100)

var myChoice: Int = 0

while true {
    
    var userInput = readLine() // readline은 String으로 받기 때문에 타입변형 필요
    
    if let input = userInput { // optional String이 if let binding을 통해 String으로 바뀜
        
        if let number = Int(input) { // optional Int를 벗겨내기 위해
            
            myChoice = number
        }
    }
    
    print(myChoice)
    
    if computerChoice > myChoice {
        print("Up")
    } else if computerChoice < myChoice {
        print("Down")
    } else {
        print("Bingo")
        break
    }
    
}
