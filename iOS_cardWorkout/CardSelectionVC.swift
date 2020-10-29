//
//  ViewController.swift
//  iOS_cardWorkout
//
//  Created by Abdelrady on 10/29/20.
//  Copyright © 2020 Abdelrady. All rights reserved.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    var timer: Timer!
    var cards = deck.allCards

    @IBOutlet weak var cardImageView: UIImageView!
    
    @IBOutlet var buttons: [UIButton]!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        for button in buttons {
            button.layer.cornerRadius = 12
        }
        startTimer()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(changeCard), userInfo: nil, repeats: true)
    }
    
    @objc func changeCard() {
        cardImageView.image = cards.randomElement() ?? UIImage()
        
        
    }
    @IBAction func stopBtnTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restartBtnTapped(_ sender: Any) {
        timer.invalidate()
        startTimer()
    }
    
   
    
}

