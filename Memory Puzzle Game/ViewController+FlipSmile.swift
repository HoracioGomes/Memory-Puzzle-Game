//
//  ViewController+FlipSmile.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 18/03/23.
//

import UIKit

extension ViewController{
    
    func flipSmile(tile: LabelCard){
        
        UIView.transition(with: tile,
                          duration: 0.5,
                          options: UIView.AnimationOptions.transitionFlipFromLeft,
                          animations: {
            tile.backgroundColor = UIColor.green
            tile.text = "\(LabelCard.smile)"
        },
        completion: nil)
    }
}
