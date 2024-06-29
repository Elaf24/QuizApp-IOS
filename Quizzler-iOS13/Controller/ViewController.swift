import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text=quizBrain.getQuestionText()
        progressBar.progress=0.0
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let result=quizBrain.checkAnswer(userAnswer: userAnswer!)
        if(result==true){
            sender.backgroundColor=UIColor.green
            }
        else{
            sender.backgroundColor=UIColor.red
        }
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text=quizBrain.getQuestionText()
        trueButton.backgroundColor=UIColor.clear
        falseButton.backgroundColor=UIColor.clear
        progressBar.progress=quizBrain.gettprogression()
        
        
    }
    
}

