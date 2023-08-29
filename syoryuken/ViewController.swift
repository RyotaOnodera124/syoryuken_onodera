//
//  ViewController.swift
//  syoryuken
//
//  Created by 小野寺良太 on 2023/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    var dispImageNo = 0
    
    var imageAttack : Array<UIImage> = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...20 {
            if let attackImage = UIImage(named: "attack\(i)") {
                imageAttack.append(attackImage)
            }
        }
        
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func button(_ sender: Any) {
        imageView.animationImages = imageAttack
        //デュレーション(間隔)が2秒
        imageView.animationDuration = 2
        //一回繰り返す
        imageView.animationRepeatCount = 1
        //アニメーションを開始する
        imageView.startAnimating()
    }

}

