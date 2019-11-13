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
   
    }
    
    @IBAction func login(_ sender: Any) {
        let userName = tfUserName.text
        let userPass = tfPassWord.text
       
        if userName == "" || userPass == "" {
            
        }
        
        
    }
    
    func displayMyAlertMessage(userMessage: String) {
        
        let myAleat = UIAlertController(title: "Aleat", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        
        myAleat.addAction(UIAlertAction(title: "OK", style: .default,
            handler: nil))
        present(myAleat, animated: true)
        
    }
    
}

