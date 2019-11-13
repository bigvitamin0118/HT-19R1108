//
//  ViewController02.swift
//  rinishi
//
//  Created by HT-19R1108 on 2019/11/08.
//  Copyright © 2019 HT-19R1108. All rights reserved.
//

import UIKit
import SQLite3

class ViewController02: UIViewController {

    var db: OpaquePointer?
    var dbfile: String = "sample.db"
    
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
        
        
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent(self.dbfile)
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("Error: database file open error.")
        }
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS foobar (id INTEGER PRIMARY KEY AUTOINCREMENT, guid TEXT)", nil, nil, nil) != SQLITE_OK {
                   print("Error: SQL execution error.")
               }
        
        
        
        
    }
    
    public func hasSameUser(name:String,password : String)->Bool{
        return true;
    }
    
    public func isSamePassword()->Bool{
        return true
    }
    
    public func register(){
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
