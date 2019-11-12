//
//  ViewController02.swift
//  rinishi
//
//  Created by HT-19R1108 on 2019/11/08.
//  Copyright © 2019 HT-19R1108. All rights reserved.
//

import UIKit

class ViewController02: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPassField: UITextField!
    @IBOutlet weak var emailAdressField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submit(_ sender: Any) {
        let name :String = nameField.text ?? "";
        let pass :String = passwordField.text ?? "";
        if(name == "" || pass == ""){
            
        }else{
            dbAccess()
            
        }
    }
    
    public func dbAccess(){
        
    }
    
    public func hasSameUser(name:String,password : String)->Bool{
        return true;
    }
    
    public func isSamePassword()->Bool{
        return true
    }
    
    public func register(){
        
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
