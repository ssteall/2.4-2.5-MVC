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
    var results: [Answer]!
    private var numberOfCatAnswers = 0
    private var numberOfDogAnswers = 0
    private var numberOfTurtleAnswers = 0
    private var numberOfRabbitAnswers = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }

    private func calculateResult(for answers: [Answer]) {
        for answer in answers {
            switch answer.animal {
            case .cat:
                numberOfCatAnswers += 1
            case .dog:
                numberOfDogAnswers += 1
            case .turtle:
                numberOfTurtleAnswers += 1
            case .rabbit:
                numberOfRabbitAnswers += 1
            }
        }
    }
    
    private func printResult() {
        
    }

}
