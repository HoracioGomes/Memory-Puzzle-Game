//
//  ViewController+FlipBack.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 18/03/23.
//

import UIKit

extension ViewController{
    
    func flipBack(tile: LabelCard){
        
        UIView.transition(with: tile,
                          duration: 0.5,
                          options: UIView.AnimationOptions.transitionFlipFromRight,
                          animations: {
            tile.backgroundColor = UIColor.black
            tile.text = "\(LabelCard.question)"
        },
        completion: nil)
    }
}
