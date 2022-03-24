//
//  ViewController.swift
//  Quizapp
//
//  Created by Ulises on 2022-03-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var progressbar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var flagview: UIImageView!
    @IBOutlet weak var questionlabel: UILabel!
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    
    
    
    
    
    
    let allQuestions = QuestionM()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
    
    if sender.tag == selectedAnswer {
        print("Correcto mano")
        score += 1
        
    }else{
     print("Incorrecto mano")
        
    }
    
    questionNumber += 1
    updateQuestion()
}

    
    
    
    func updateQuestion () {
        if questionNumber <= allQuestions.list.count - 1{
            flagview.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionlabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
           updateUI()
            
        }else {
            let alert = UIAlertController(title: "GENIAAL", message: "Ya terminaste mano empiezale otra vez", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Iniciar de nuevo", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            scoreLabel.text = "Score: \(score)"
        }
        
    }
    
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        
        if questionNumber <= allQuestions.list.count - 1{
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressbar.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
        }}
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }
    



}

