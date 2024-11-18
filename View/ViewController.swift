//
//  ViewController.swift
//  MyAdventure
//
//  Created by Justin Bell on 11/16/24.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var promptLogic = PromptLogic()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hideRestartButton()
        showPrompt()
    }


    @IBAction func choiceSelected(_ sender: UIButton) {
        
        topImage.image = UIImage(named: "Huddle")
        
        //move to prompt baltimore ravens game
        if sender == choiceTwoButton || (promptLogic.getCurrentPromptIndex() >= 4 && promptLogic.getCurrentPromptIndex() <= 6) {
            //move to prompt for baltimore ravens
            if promptLogic.getCurrentPromptIndex() == 0  {
                promptLogic.setCurrentPromptIndex(4)
                showPrompt()
            }
            else if promptLogic.getCurrentPromptIndex() >= 4 {
                if sender == choiceOneButton {
                    promptLogic.setCurrentPromptIndex(5)
                    showRestartButton()
                    showPrompt()
                }
                else {
                    promptLogic.setCurrentPromptIndex(6)
                    showRestartButton()
                    showPrompt()
                }
            }
        }
        
        //move to prompt for kansas city chiefs game
        if sender == choiceOneButton || (promptLogic.getCurrentPromptIndex() >= 0 && promptLogic.getCurrentPromptIndex() <= 3) {
            switch promptLogic.getCurrentPromptIndex() {
            case 0:
                promptLogic.setCurrentPromptIndex(1)
                showPrompt()
            case 1:
                if sender == choiceOneButton {
                    promptLogic.setCurrentPromptIndex(2)
                    showRestartButton()
                    showPrompt()
                } else if sender == choiceTwoButton {
                    promptLogic.setCurrentPromptIndex(3)
                    showRestartButton()
                    showPrompt()
                }
            default:
                showRestartButton()
                break
            }
            
        }
        
    }
    
    @IBAction func restartButtonSelected(_ sender: UIButton) {
        topImage.image = UIImage(named: "logo2")
        promptLogic.setCurrentPromptIndex(0)
        viewDidLoad()
    }
    
    func showPrompt() {
        promptLabel.text = promptLogic.getPrompt()
        choiceOneButton.setTitle(promptLogic.getChoiceOne(), for: .normal)
        choiceTwoButton.setTitle(promptLogic.getChoiceTwo(), for: .normal)
    }
    
    func showRestartButton() {
        choiceOneButton.isHidden = true
        choiceTwoButton.isHidden = true
        restartButton.isHidden = false
    }
    
    func hideRestartButton() {
        choiceOneButton.isHidden = false
        choiceTwoButton.isHidden = false
        restartButton.isHidden = true
    }
}

