//
//  ViewController.swift
//  Swipe Gestures
//
//  Created by c85529 on 6/4/19.
//  Copyright © 2019 c85529. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupSwipeGesture()
        
    }

    func setupSwipeGesture(){
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeft))
        
        leftSwipe.direction = .left
        rightSwipe.direction = .right
        self.view.addGestureRecognizer(leftSwipe)
        self.view.addGestureRecognizer(rightSwipe)
    }
    
    @objc func swipeLeft(){
        performSegue(withIdentifier: "right", sender: self)
    }
    
    @objc func swipeRight(){
        performSegue(withIdentifier: "left", sender: self)
    }
    
}

