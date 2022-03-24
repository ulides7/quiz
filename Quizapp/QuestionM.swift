//
//  QuestionM.swift
//  Quizapp
//
//  Created by Ulises on 2022-03-22.
//

import Foundation

class QuestionM{
    var list = [Question]()
    
    init() {
        list.append(Question(image: "b1", questionText: "Pais donde se creó el mariachi", choiceA: "A. México", choiceB: "B. Puerto Rico", choiceC: "C. MAYAMI", choiceD: "D. USA", answer: 1))

        list.append(Question(image: "c", questionText: "Se te atraviesa este hombre ¿Qué es lo que te dice primero ", choiceA: "A. Hola amigo", choiceB: "B. MR.WORLDWIDE", choiceC: "C. CHIN CHON ", choiceD: "D. ESCIUSMI SIR", answer: 3))

        list.append(Question(image: "d", questionText: "Diga quien es este reggaetonero", choiceA: "A. PITBULL", choiceB: "B. DADDY YANKEE", choiceC: "C. PAULOLONDRA", choiceD: "D. OZUNA", answer: 2))

        list.append(Question(image: "k", questionText: "Quien es Kemonito", choiceA: "A. Politico", choiceB: "B. Luchador", choiceC: "C. Hombre pequeño", choiceD: "D. Cirujano", answer: 2))

        list.append(Question(image: "n" , questionText: "Estaba buscando a ese que canta banda pero me salio este, ¿como se llama el otro?", choiceA: "A. Alejandro Nodales " , choiceB: "B. Pablo" , choiceC: "C. La rosalia" , choiceD: "D. Cristian Nodal", answer: 4))

        list.append(Question(image: "s" , questionText: "A", choiceA: "A. La tarea" , choiceB: "B. La tabla periodica" , choiceC: "C. La mois" , choiceD: "D. La regla", answer: 3))
        
    }
}
