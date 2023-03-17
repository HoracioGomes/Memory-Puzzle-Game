import UIKit

extension ViewController {
    
    @objc func increaseTime(){
        gameTime += 1
        let timeMin = String(format: "%02d", gameTime / 60)
        let timeSec = String(format: "%02d", gameTime % 60)
        timeLabel.text = "\(timeMin) : \(timeSec)"
    }
}
