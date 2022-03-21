//
//  Question.swift
//  MVC APP
//
//  Created by Дмитрий Мирошников on 22.03.2022.
//

import Foundation

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(title: "Какую пищу предпочитаете?",
                     type: .single,
                     answers: [
                        Answer(title: "Рыба", animal: .cat),
                        Answer(title: "Стейк", animal: .dog),
                        Answer(title: "Морковь", animal: .rabbit),
                        Answer(title: "Водоросли", animal: .turtle)
                    ]),
            Question(title: "Что вам нравится больше?",
                     type: .multiple,
                     answers: [
                        Answer(title: "Плавать", animal: .dog),
                        Answer(title: "Спать", animal: .cat),
                        Answer(title: "Обнимать", animal: .rabbit),
                        Answer(title: "Есть", animal: .turtle)
                     ]),
            Question(title: "Любите ли вы поездки на машине?",
                     type: .ranged,
                     answers: [
                        Answer(title: "Ненавижу", animal: .cat),
                        Answer(title: "Нервничаю", animal: .rabbit),
                        Answer(title: "Не замечаю", animal: .turtle),
                        Answer(title: "Обожаю", animal: .dog)
                     ])
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case cat = "😼"
    case dog = "🐶"
    case turtle = "🐢"
    case rabbit = "🐰"
    
    var definition: String {
        switch self {
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        }
    }
}
