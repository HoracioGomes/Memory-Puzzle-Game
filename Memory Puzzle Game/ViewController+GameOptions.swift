//
//  ViewController+GameOptions.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 17/03/23.
//

import UIKit

extension ViewController{
    
    @IBAction func gameModeAction(_ sender: Any) {
        
        if let segCtrl =  sender as? UISegmentedControl{
            
            let ind = segCtrl.selectedSegmentIndex
            
            switch ind {
            case 0:
                gameMode = 4
            case 1:
                gameMode = 6
            case 2:
                gameMode = 8
            default:
                break
            }
            
            resetAction(self)
            
        }
    }
}
