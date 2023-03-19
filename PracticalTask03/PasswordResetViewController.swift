//
//  PasswordResetViewController.swift
//  PracticalTask03
//
//  Created by Sonun on 19/3/23.
//

import UIKit

class PasswordResetViewController: UIViewController {
    
    var emailValue: String?
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var SendOTPBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SendOTPBtn.layer.cornerRadius = 24
        
        emailTF.text = emailValue ?? "kiki"
    }
    

}
