//
//  ViewController.swift
//  What Should I Eat
//
//  Created by Pathompong Subtechitmanee on 25/3/2563 BE.
//  Copyright © 2563 PZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var menuOut = false
    

    @IBOutlet weak var favDishBtn: UIButton!
    @IBOutlet weak var favRestaurantBtn: UIButton!
    @IBOutlet weak var historyBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customizeButton(buttonName: favDishBtn)
        customizeButton(buttonName: favRestaurantBtn)
        customizeButton(buttonName: historyBtn)
    }

    func customizeButton(buttonName:UIButton) {
        buttonName.layer.borderWidth = 3
    }
    @IBAction func menuTapped(_ sender: Any) {
        if menuOut == false{
            leading.constant = 150
            trailing.constant = -150
            menuOut = true
        }
        else{
            leading.constant = 0
            trailing.constant = 0
            menuOut = false
        }
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: self.view.layoutIfNeeded)
        {(animationComplete) in
            print("the animation is completed")
        }
    }
}

