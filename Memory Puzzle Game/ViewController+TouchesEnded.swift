//
//  ViewController+TouchesEnded.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 17/03/23.
//

import UIKit

extension ViewController{
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if(aTileIsAnimating){
            return
        }
         let myTouche = touches.first
            if let touchedTile = myTouche?.view as? LabelCard{
                if(foundTilesArray.contains(touchedTile)){
                    return
                }
                aTileIsAnimating = true
                if (compareNow){
                    if(touchedTile == firstTile){
                        aTileIsAnimating = false
                        return
                    }
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
