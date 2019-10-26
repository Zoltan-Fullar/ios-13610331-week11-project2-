//
//  ResultViewController.swift
//  ios 13610331 week10 project2
//
//  Created by ICT on 19/10/2562 BE.
//  Copyright © 2562 ict silpakorn. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLable.text = advice
        
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reCal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
