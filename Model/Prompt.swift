//
//  Prompt.swift
//  MyAdventure
//
//  Created by Justin Bell on 11/17/24.
//

import Foundation

struct Prompt {
    let prompt: String
    let choiceOne: String
    let choiceTwo: String
    
    init(prompt: String, choiceOne: String, choiceTwo: String) {
        self.prompt = prompt
        self.choiceOne = choiceOne
        self.choiceTwo = choiceTwo
    }
}
