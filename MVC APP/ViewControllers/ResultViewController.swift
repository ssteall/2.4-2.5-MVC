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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        calculateResult(for: results)
    }

    private func calculateResult(for answers: [Answer]) {
        var animalAnswersCount: [Animal : Int] = [:]
        
        for answer in answers {
            animalAnswersCount[answer.animal] = animalAnswersCount[answer.animal] ?? 0 + 1
            }
        
        let sortedAnimalAnswersCount = animalAnswersCount.sorted {$0.value > $1.value}
        guard let leader = sortedAnimalAnswersCount.first?.key else { return }
        printResult(with: leader)
    }

    private func printResult(with animal: Animal) {
        animalLabel.text = "Вы - \(animal.rawValue)"
        descriptionLabel.text = animal.definition
    }

}
