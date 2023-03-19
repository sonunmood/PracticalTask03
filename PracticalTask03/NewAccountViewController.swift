//
//  NewAccountViewController.swift
//  PracticalTask03
//
//  Created by Sonun on 19/3/23.
//

import UIKit

class NewAccountViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var mobileNumberTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.layer.borderWidth = 1
        passwordTF.layer.borderWidth = 1
        mobileNumberTF.layer.borderWidth = 1
        emailTF.layer.borderWidth = 1
        
        
        loginBtn.layer.cornerRadius = 24
        
    }
    
    @IBAction func loginAction(_ sender: Any) {
        if userNameTF.text == "" || mobileNumberTF.text == "" || passwordTF.text == "" || emailTF.text == "" {
            userNameTF.layer.borderColor = UIColor.red.cgColor
            emailTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.layer.borderColor = UIColor.red.cgColor
            mobileNumberTF.layer.borderColor = UIColor.red.cgColor
        } else {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
            if let homeViewController = mainStoryboard.instantiateViewController(withIdentifier: "PasswordResetViewController") as? PasswordResetViewController {
                homeViewController.emailValue = emailTF.text
                navigationController?.pushViewController(homeViewController,
                                                         animated: true)
            }
        }
    }
}
