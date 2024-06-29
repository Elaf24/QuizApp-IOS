import UIKit
import Foundation
struct QuizBrain{
    
    let quiz = [
        Question(q: "What is the capital of BD?", ans: "True"),
        Question(q: "What is your name?", ans: "False"),
        Question(q: "what is your age", ans: "True"),
    ]
    
    var questionNumber = 0
    func checkAnswer(userAnswer:String ) ->Bool{
        let rightAnswer=quiz[questionNumber].answer
        if userAnswer == rightAnswer {
            return true
        } else {
            return false
            
        }
        
        
    }
    func getQuestionText()->String{
        
        return quiz[questionNumber].question
    }
    mutating func nextQuestion(){
        if questionNumber+1<quiz.count{
            questionNumber+=1
           
        }
        else{
            questionNumber=0
            
        }
        
    }
    func gettprogression()->Float{
        let progress=Float(questionNumber)/Float(quiz.count)
        return progress
    }
    
}


