//
//  ViewController.swift
//  Calculator
//
//  Created by student on 30/1/2562 BE.
//  Copyright © 2562 BUU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var number1Label: UILabel!
    @IBOutlet weak var number2Label: UILabel!
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var number1 = 0
    var number2 = 0
    var symbol = ""
    var answer = 0
    var divFloat: Float = 0.00
    var flag = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRandom()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showAlert() {
        
        startNewRandom()
    }
    func symbolRandom() {
        var numSym = Int.random(in: 1...4)
        if(numSym == 1){
            symbol = "+"
            answer = number1 + number2
        }else if (numSym == 2){
            symbol = "-"
            answer = number1 - number2
        }else if (numSym == 3){
            symbol = "x"
            answer = number1 * number2
        }else {
            symbol = "÷"
            flag = false
            divFloat = Float(number1) / Float(number2)
        }
        updateNumber()
    }
    
    
    
    func startNewRandom() {
        number1 = Int.random(in: 1...100)
        number2 = Int.random(in: 1...100)
        symbolRandom()
        
        
    }
    
    func updateNumber() {
        number1Label.text = String(number1)
        number2Label.text = String(number2)
        symbolLabel.text = String(symbol)
        if( flag == true ) { 
            answerLabel.text = String(answer)
        } else {
            answerLabel.text = String(divFloat)
            flag = true
        }
        
    }
    
    @IBAction func NewRound(_ update: UIButton) {
        startNewRandom()
    }


}

