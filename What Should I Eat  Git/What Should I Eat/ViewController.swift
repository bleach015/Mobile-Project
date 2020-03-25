//
//  ViewController.swift
//  What Should I Eat
//
//  Created by Pathompong Subtechitmanee on 25/3/2563 BE.
//  Copyright © 2563 PZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
}

