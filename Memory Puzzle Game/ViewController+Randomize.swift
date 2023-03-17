//
//  ViewController+Randomize.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 17/03/23.
//

import UIKit

extension ViewController{
    
    func randomizeTiles(){
        
        var tempCenterArray = centerArray
        
       for anyTile in tilesArray{
           let index : Int = Int (arc4random_uniform(UInt32(tempCenterArray.count)))
           let randomCenter = tempCenterArray[index]
           anyTile.center = randomCenter
           tempCenterArray.remove(at: index)
        }
    }
}
