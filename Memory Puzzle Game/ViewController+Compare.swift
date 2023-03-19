//
//  ViewController+Compare.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 17/03/23.
//

import UIKit

extension ViewController{
    
    func compare(){
        
        if(firstTile.internalNumber == secondTile.internalNumber){
            flipSmile(tile: firstTile)
            flipSmile(tile: secondTile)
            foundTilesArray.append(firstTile)
            foundTilesArray.append(secondTile)
            didWon()
        }else{
            flipBack(tile: firstTile)
            flipBack(tile: secondTile)
        }
        
    }
}
