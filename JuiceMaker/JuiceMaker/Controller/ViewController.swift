//
//  JuiceMaker - ViewController.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var juiceMaker = JuiceMaker()
    //ViewController가 Model을 알고 있어야 한다.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initFruitStock()
    }
}

//1. 객체가 일을 안한다!
//2. 기능들이 같이 일 안한다!
