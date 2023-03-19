//
//  ViewController+WonState.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 19/03/23.
//

import UIKit

extension ViewController{
    
    func didWon(){
        if(foundTilesArray.count == tilesArray.count){
            timerGame.invalidate()
            wonLabel.text = "You won in \(gameTime/60): \(gameTime%60)"
            wonLabel.isHidden = false
        }
    }
}
