//
//  ViewController.swift
//  PracticalTask03
//
//  Created by Sonun on 19/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginBtn.layer.cornerRadius = 24
        emailTF.layer.borderWidth = 1
        passwordTF.layer.borderWidth = 1
        
        
    }


    @IBAction func passwordResetAction(_ sender: Any) {
    }
    
    @IBAction func loginBtnAction(_ sender: Any) {
        
        if emailTF.text == "" || passwordTF.text == "" {
            emailTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    @IBAction func createANewAccountAction(_ sender: Any) {
        let newAccount = storyboard?.instantiateViewController(identifier: "NewAccountViewController")
        navigationController?.pushViewController(newAccount!, animated: true)
        
        
    }
}

