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
        var counter = 1
    
        for _ in 0..<gameMode {
            for _ in 0..<gameMode {
                let tileCenter = CGPoint(x: xCenter, y: yCenter)
                let tile = LabelCard(frame: CGRect(origin: CGPoint.zero, size: tileCGSize))
                tile.font = UIFont.systemFont(ofSize: 50, weight: UIFont.Weight.bold)
                tile.textAlignment = NSTextAlignment.center
                tile.textColor = UIColor.white
                tile.internalNumber = counter
                tile.text = "\(tile.internalNumber!)"
                if(counter == gameMode * gameMode / 2){
                    counter = 0
                }
                counter += 1
                tile.center = tileCenter
                xCenter += tileSize
                tile.backgroundColor = UIColor.black
                gameView.addSubview(tile)
            }
            xCenter = tileSize / 2
            yCenter += tileSize
        }
        
    }
}

