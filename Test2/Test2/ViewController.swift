//
//  ViewController.swift
//  Test2
//
//  Created by GSM04 on 2021/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var lbHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSend(_ sender: UIButton) {
        lbHello.text = "Hello, " + txtName.text!
    }
    
}

