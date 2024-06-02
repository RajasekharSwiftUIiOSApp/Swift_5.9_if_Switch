//
//  ViewController.swift
//  Swift_5.9_if_Switch
//
//  Created by rajasekhar pidikiti on 02/06/24.
//

import UIKit

class ViewController: UIViewController {
   
   let score = 200
  
    fileprivate func terneriOperaterVSifStatement_diff_inValueType_BasedOnValue_Change() {
        let customerRating = 4
        let bonusMultiplier1 = customerRating > 3 ? "great" : "greater"
        let bonusMultiplier2 = if customerRating > 3 {"this"} else {"2.0"}



       print(bonusMultiplier1)
       print(bonusMultiplier2)


    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ifStatementWithResult()
        
        switchStatementWithResult()
        
        let results = switchStatementWithResultReturn()

        print("results: \(results)")

        terneriOperaterVSifStatement_diff_inValueType_BasedOnValue_Change()
    }
    
    fileprivate func ifStatementWithResult() {
        // Do any additional setup after loading the view.
        // let score = 800
        let simpleResult = if score > 500 { "Pass" } else { "Fail" }

        print(simpleResult)
    }
    
    fileprivate func switchStatementWithResult() {
        let complexResult = switch score {
        case ...300: "Fail"
        case 500...300: "Pass"
        case 501...800: "Merit"
        default: "Distinction"
        }
        print(complexResult)

    }
    
    fileprivate func switchStatementWithResultReturn() -> String {
        switch score {
        case ...300: "Fail"
        case 500...300: "Pass"
        case 501...800: "Merit"
        default: "Distinction"
        }
    }
}

