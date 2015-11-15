//
//  SecondViewController.swift
//  Charitodo
//
//  Created by Michela Burns on 11/14/15.
//  Copyright (c) 2015 Michela. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func buttonAddTask_Click(sender: UIButton)
    {
        
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text = " " //Once user has entered, there is no background "text"
        txtDesc.text = " " //Once user has entered, there is no background "description"
        
        self.tabBarController?.selectedIndex=0; //Go back to first tab

        
        /*
        if (txtTask.text == "")
            {
            //Task Title is blank, do not add a record
            }
            
        else
            {
            //add record
            let name: String = txtTask.text!
            let description: String = txtDesc.text!
            taskMgr.addTask(name, desc: description)
            
            //dismiss keyboard and reset fields
            
            self.view.endEditing(true)
            txtTask.text = nil
            txtDesc.text = nil
            }
        */
    }
    
    
    
    
    
    
    //IOS Touch Functions
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        self.view.endEditing(true)
        
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder();
        return true
    }


}

