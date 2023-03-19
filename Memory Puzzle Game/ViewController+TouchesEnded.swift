//
//  ViewController+TouchesEnded.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 17/03/23.
//

import UIKit

extension ViewController{
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
         let myTouche = touches.first
            if let touchedTile = myTouche?.view as? LabelCard{
                if (compareNow){
                    secondTile = touchedTile
                    revealAndCompare(tile: secondTile)
                }else{
                    firstTile = touchedTile
                    flipToReveal(tile: firstTile)
                }
                
                compareNow = !compareNow
        }
    }
}
