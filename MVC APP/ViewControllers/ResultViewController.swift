//
//  ResultViewController.swift
//  MVC APP
//
//  Created by Дмитрий Мирошников on 27.03.2022.
//

import UIKit

class ResultViewController: UIViewController {
    // 1 передать массив с ответами
    // 2 определить наиболее частов встречающийся тип животного
    // 3 отобразить результаты в соответсвии с типом этого животного
    // 4 избавится от кнопки возврата назад
    
    @IBOutlet var animalLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var results: [Answer]!
 
    private var leader: Animal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        calculateResult(for: results)
        printResult()
    }

    private func calculateResult(for answers: [Answer]) {
        var numberOfCatAnswers = 0
        var numberOfDogAnswers = 0
        var numberOfTurtleAnswers = 0
        var numberOfRabbitAnswers = 0
        var leaderAnswersCount = 0
        
        for answer in answers {
            switch answer.animal {
            case .cat:
                numberOfCatAnswers += 1
                if numberOfCatAnswers > leaderAnswersCount {
                    leaderAnswersCount = numberOfCatAnswers
                    leader = .cat
                }
            case .dog:
                numberOfDogAnswers += 1
                if numberOfDogAnswers > leaderAnswersCount {
                    leaderAnswersCount = numberOfDogAnswers
                    leader = .dog
                }
            case .turtle:
                numberOfTurtleAnswers += 1
                if numberOfTurtleAnswers > leaderAnswersCount {
                    leaderAnswersCount = numberOfTurtleAnswers
                    leader = .turtle
                }
            case .rabbit:
                numberOfRabbitAnswers += 1
                if numberOfRabbitAnswers > leaderAnswersCount {
                    leaderAnswersCount = numberOfRabbitAnswers
                    leader = .rabbit
                }
            }
        }
    }

    private func printResult() {
        animalLabel.text = "Вы - \(leader.rawValue)"
        descriptionLabel.text = leader.definition
    }

}
