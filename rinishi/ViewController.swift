//
//  ViewController.swift
//  rinishi
//
//  Created by HT-19R1108 on 2019/11/07.
//  Copyright © 2019 HT-19R1108. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfUserName: UITextField!
    @IBOutlet weak var tfPassWord: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        let yourName = tfUserName.text
        let yourPass = tfPassWord.text

    }
    
    @IBAction func login(_ sender: Any) {
    }
}

