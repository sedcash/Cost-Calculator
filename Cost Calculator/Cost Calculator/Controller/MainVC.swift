//
//  ViewController.swift
//  Cost Calculator
//
//  Created by Sedrick Cashaw Jr on 2/10/18.
//  Copyright © 2018 Sedrick Cashaw Jr. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtF: CurrencyTextField!
    @IBOutlet weak var priceTxtF: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxtF.inputAccessoryView = calcBtn
        priceTxtF.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxtF.text, let priceTxt = priceTxtF.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forwage: wage, andPrice: price))"
            }
        }
    }
    
    
    @IBAction func clearCalculatorBtnPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxtF.text = ""
        priceTxtF.text = ""
    }
    

}

