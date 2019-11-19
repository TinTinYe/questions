//
//  ViewController.swift
//  questions
//
//  Created by Yvonne on 2019/11/17.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questions = [Question(question: "how old are you", answer: "8 years old"),Question(question: "what is your name", answer: "andrew"),Question(question: "A", answer: "a")]
    
    var index = 0
    
    
    
    
    
    
    @IBOutlet weak var quesLabel: UILabel!
    
    @IBOutlet weak var answLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        quesLabel.text = questions[index].question
    

    }
      

    @IBAction func answerButton(_ sender: UIButton) {
        
        answLabel.text = questions[index].answer
        
        
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        
        index+=1
        if index == questions.count{
            index = 0
        }
        
        quesLabel.text = questions[index].question
        answLabel.text = ""
    }
    
    
    
    
}

