//
//  SIgnUpViewController.swift
//  E-Commerce
//
//  Created by Abdelnasser on 13/03/2024.
//

import UIKit

class SIgnUpViewController: UIViewController {

    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginBtuLayout: UIButton!
    @IBOutlet weak var confPasswordView: UIView!
    @IBOutlet weak var confPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailView.addLayers()
        passwordView.addLayers()
        loginBtuLayout.addLayers()
        confPasswordView.addLayers()
    }

    
    //Mark:- Action
    
    @IBAction func signInBtu(_ sender: UIButton) {
        print("singup")
    }
 

}
