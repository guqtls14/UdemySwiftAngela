//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 김신협 on 2022/12/17.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
