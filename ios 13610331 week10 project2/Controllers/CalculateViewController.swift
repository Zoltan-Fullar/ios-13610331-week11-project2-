//
//  ViewController.swift
//  ios 13610331 week10 project2
//
//  Created by ICT on 19/10/2562 BE.
//  Copyright © 2562 ict silpakorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var bmiValue = "0.0"
    var bmiValueCal = "0"
    //เรียนใช้ Struct #1 ประกาศตัวแปรชนิด Struct
    var calBrain = CalculateBrain()
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weidthSlider: UISlider!
    
    @IBOutlet weak var heightOutlet: UILabel!
    @IBOutlet weak var weidthOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sliderHeightChange(_ sender: UISlider) {
        print(sender.value)
        print(String(format: "%.2f", sender.value))
        let height = String(format: "%.2f", sender.value)
        heightOutlet.text = "\(height)"
    }
    @IBAction func sliderWeidthChange(_ sender: UISlider) {
        print(sender.value)
        print(String(format: "%.0f", sender.value))
        let weidth = String(format: "%.0f", sender.value)
        weidthOutlet.text = "\(weidth)"
        
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
//        let bmi = weidthOutlet/pow(heightOutlet, 2)
//        print("")
        
        let heightUser = heightSlider.value
        let weidthUser = weidthSlider.value
//        let bmi = weidth/height*height
//        print(bmi)
        //เรียนใช้ Struct #2 เรียกใช้funcของstruct โดยการส่งค่าที่ต้องการไป
        calBrain.calculateBMI(height:heightUser, weidth:weidthUser)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinetionVC = segue.destination as! ResultViewController
            destinetionVC.bmiValue = calBrain.getbmiValue()
            destinetionVC.advice = calBrain.getAdvice()
            destinetionVC.color = calBrain.getColor()
            //ชื่อ object.ชื่อตัวแปร = ค่าที่ต้องการ set ให้
        }//end if
        
        if segue.identifier == "goToCredit" {
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullname = "Nongnapas Thaiyuenwong"
        }
    }//end func
}//end class
