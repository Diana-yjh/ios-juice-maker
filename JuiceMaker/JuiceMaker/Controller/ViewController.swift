//
//  JuiceMaker - ViewController.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var modifyStockButton: UIBarButtonItem!
    @IBOutlet weak var strawberryStockLabel: UILabel!
    @IBOutlet weak var bananaStockLabel: UILabel!
    @IBOutlet weak var pineappleStockLabel: UILabel!
    @IBOutlet weak var kiwiStockLabel: UILabel!
    @IBOutlet weak var mangoStockLabel: UILabel!
    
    var juiceMaker = JuiceMaker()
    
    @IBAction func modifyStockButtonTapped(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ModifyStockViewController") as? ModifyStockViewController else {
            return
        }
        vc.modalPresentationStyle = .pageSheet
        self.present(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initFruitStock()
    }
    
    @IBAction func orderStrawberryJuice(_ sender: UIButton) {
        
    }
    
    @IBAction func orderBananaJuice(_ sender: UIButton) {
        
    }
    
    @IBAction func orderStrawberryBananaJuice(_ sender: UIButton) {
        
    }
    
    @IBAction func orderPineappleJuice(_ sender: UIButton) {
        
    }
    
    @IBAction func orderMangoJuice(_ sender: UIButton) {
        
    }
    
    @IBAction func orderKiwiJuice(_ sender: UIButton) {
        
    }
    
    @IBAction func orderMangoKiwiJuice(_ sender: UIButton) {
        
    }
}
