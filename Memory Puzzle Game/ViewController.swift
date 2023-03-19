//
//  ViewController.swift
//  Memory Puzzle Game
//
//  Created by Horacio Gomes dos Santos Junior on 14/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var wonLabel: UILabel!
    
    var gameMode: Int = 4
    var tileSize: CGFloat!
    var tilesArray: Array<LabelCard> = []
    var centerArray: Array<CGPoint> = []
    var foundTilesArray: Array<LabelCard> = []
    var gameTime: Int = 0
    var timerGame: Timer!
    var firstTile: LabelCard!
    var secondTile: LabelCard!
    var compareNow = false
}

