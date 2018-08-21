//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Ricardo van Burik on 20-08-18.
//  Copyright © 2018 Ricardo van Burik. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResults()
        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResults(){
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map {$0.type}
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: { (pair1, pair2) -> Bool in return pair1.value > pair2.value})
        let mostCommonAnimal = frequentAnswersSorted.first?.key
    
        updateUI(with: mostCommonAnimal!)
    }
    
    func updateUI(with animal: AnimalType){
        resultAnswerLabel.text = "You are a \(animal.rawValue)"
        resultDefinitionLabel.text = animal.definition
        
        navigationItem.hidesBackButton = true
    }



    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
