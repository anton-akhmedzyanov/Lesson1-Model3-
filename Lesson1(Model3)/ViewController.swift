//
//  ViewController.swift
//  Lesson1(Model3)
//
//  Created by Anton Akhmedzyanov on 23.09.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var animationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    
    private var animationStarted = false
    
    
    
    @IBAction func pressedRunAnimation(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.autoreverse, .repeat]){ [unowned self] in
            if !animationStarted {
                animationView.frame.origin.x -= 10
                animationStarted.toggle()
            }
        }
        sender.pulsate()
    }
    
    
    @IBAction func runSpringButton(_ sender: SpringButton) {
        springAnimationView.animation = "shake"
        springAnimationView.curve = "easeInOut"
        springAnimationView.force = 2
        springAnimationView.animate()
        
        sender.animation = "pop"
        sender.duration = 1.5
        sender.animate()
    }
    
}

