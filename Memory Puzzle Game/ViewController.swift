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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTiles()
    }

    @IBAction func resetAction(_ sender: Any) {
    }
    
    @IBAction func gameModeAction(_ sender: Any) {
    }
    
    func makeTiles(){
        tileSize = gameView.frame.size.width / CGFloat ( gameMode )
        let tileCGSize = CGSize(width: tileSize-5, height: tileSize-5)
        var xCenter = tileSize / 2.0
        var yCenter = tileSize / 2.0
    
        for y in 0..<gameMode {
            for h in 0..<gameMode {
                let tileCenter = CGPoint(x: xCenter, y: yCenter)
                let tile = UILabel(frame: CGRect(origin: CGPoint.zero, size: tileCGSize))
                tile.center = tileCenter
                xCenter += tileSize
                tile.backgroundColor = UIColor.black
                gameView.addSubview(tile)
            }
            xCenter = tileSize / 2.0
            yCenter += tileSize
        }
        
    }
}

