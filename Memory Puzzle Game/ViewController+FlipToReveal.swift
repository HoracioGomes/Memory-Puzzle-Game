//
//  ViewController+FlipToReveal.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 17/03/23.
//

import UIKit
extension ViewController{
    func flipToReveal(tile: LabelCard)
    {
        UIView.transition(with: tile,
                          duration: 0.5,
                          options: UIView.AnimationOptions.transitionFlipFromLeft,
                          animations: {
            tile.backgroundColor = UIColor.red
            tile.text = "\(tile.internalNumber!)"
            
        },
                          completion: { (res) in
            self.aTileIsAnimating = false
        })
    }
}
