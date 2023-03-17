//
//  ViewController+Reset.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 17/03/23.
//

import UIKit

extension ViewController {
    @IBAction func resetAction(_ sender: Any) {
        
        for any in tilesArray {
            any.removeFromSuperview()
        }
        
        makeTiles()
        randomizeTiles()
        
        if(timerGame != nil){
            timerGame.invalidate()
            timeLabel.text = "00 : 00"
            gameTime = 0
        }
        
        timerGame = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(increaseTime), userInfo: nil, repeats: true)
    }
}
