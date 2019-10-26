//
//  CreditViewController.swift
//  ios 13610331 week10 project2
//
//  Created by ICT on 19/10/2562 BE.
//  Copyright © 2562 ict silpakorn. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {
    var fullname = "fullname"
    
    @IBOutlet weak var full: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        full.text = fullname
        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
