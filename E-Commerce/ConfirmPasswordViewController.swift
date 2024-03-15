//
//  ConfirmPasswordViewController.swift
//  E-Commerce
//
//  Created by Abdelnasser on 13/03/2024.
//

import UIKit

class ConfirmPasswordViewController: UIViewController {

   
    @IBOutlet weak var confirmPasswordView: UIView!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var confirmBtu: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmPasswordView.addLayers()
        confirmBtu.addLayers()
    }

    
    //Mark:- Action
    
    @IBAction func confirm(_ sender: UIButton) {
        print("login")
    }
  

}
