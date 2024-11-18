//
//  PromptLogic.swift
//  MyAdventure
//
//  Created by Justin Bell on 11/17/24.
//

import Foundation

struct PromptLogic {
    var currentPromptIndex = 0

    let prompts = [
        Prompt(prompt: "Welcome to the Pittsburgh Steelers rook! Choose your opponent!",
               choiceOne: "KANSAS CITY CHIEFS",
               choiceTwo: "BALTIMORE RAVENS"),
        Prompt(prompt: "The game is tied. Kansas City is good at defending passes. What play should we run?",
               choiceOne: "RUN PLAY",
               choiceTwo: "PASS PLAY"),
        Prompt(prompt: "We scored a touchdown and won the game! Congratulations!",
               choiceOne: "RUN PLAY",
               choiceTwo: "PASS PLAY"),
        Prompt(prompt: "We lost the game! Kansas City intercepted the ball and scored a touchdown.",
               choiceOne: "RUN PLAY",
               choiceTwo: "PASS PLAY"),
        Prompt(prompt: "Baltimore just scored but we can too. The Raven's run defense is exceptional. What play should we run?",
               choiceOne: "RUN PLAY",
               choiceTwo: "PASS PLAY"),
        Prompt(prompt: "Baltimore stopped us from scoring. We'll get them next time!",
               choiceOne: "RUN PLAY",
               choiceTwo: "PASS PLAY"),
        Prompt(prompt: "We scored a touchdown! Good job!",
               choiceOne: "RUN PLAY",
               choiceTwo: "PASS PLAY"),
        
    ]
    
    func getCurrentPromptIndex() -> Int {
        return currentPromptIndex
    }

    mutating func setCurrentPromptIndex(_ index: Int) {
        currentPromptIndex = index
    }

    func getPrompt() -> String {
        return prompts[currentPromptIndex].prompt
    }

    func getChoiceOne() -> String {
        return prompts[currentPromptIndex].choiceOne
    }

    func getChoiceTwo() -> String {
        return prompts[currentPromptIndex].choiceTwo
    }
}



