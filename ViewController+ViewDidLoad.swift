//
//  ViewController+ViewDidLoad.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 17/03/23.
//

import UIKit

extension ViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTiles()
        randomizeTiles()
        
        if(timerGame != nil){
            timerGame.invalidate()
            timeLabel.text = "00 : 00"
        }
        
        timerGame = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(increaseTime), userInfo: nil, repeats: true)
    }
}
