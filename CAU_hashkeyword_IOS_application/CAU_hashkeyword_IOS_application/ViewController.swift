//DeisgnableView
//  ViewController.swift
//  CAU_hashkeyword_IOS_application
//
//  Created by Hyeseong Kim on 10/01/2019.
//  Copyright © 2019 Hyeseong Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var inputField: UITextField!
    @IBOutlet var outputField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.inputField.frame.size.width = 283.0
        self.inputField.layer.borderWidth = 2.0
        self.inputField.layer.cornerRadius = 3.0
        self.inputField.layer.borderColor = UIColor.lightGray.cgColor
        self.inputField.layer.shadowRadius = 3.0
        self.inputField.layer.shadowColor = UIColor.black.cgColor
        self.inputField.layer.shadowOffset = CGSize(width: 0.3, height: 0.3)
        self.inputField.layer.shadowOpacity = 1.0
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func insert(sender: AnyObject) {
        
        outputField.text=inputField.text;
        inputField.text="";
        
    }
    
    func textFieldShouldReturn(_ inputField: UITextField) -> Bool {
        outputField.text = inputField.text
        inputField.text = ""
        inputField.resignFirstResponder();
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
