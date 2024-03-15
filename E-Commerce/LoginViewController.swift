//
//  LoginViewController.swift
//  E-Commerce
//
//  Created by Abdelnasser on 13/03/2024.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginBtuLayout: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailView.addLayers()
        passwordView.addLayers()
        loginBtuLayout.addLayers()
    }

    
    //Mark:- Action
    
    @IBAction func logInBtu(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let tabBar = storyBoard.instantiateViewController(withIdentifier: "TabBar")
        let nvg = UINavigationController(rootViewController: tabBar)
        nvg.modalPresentationStyle = .fullScreen
        present(nvg, animated: true)
    }
    
    @IBAction func signInBtu(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "SIgnUpViewController")
        navigationController?.pushViewController(viewController, animated: true)
        print("singup")
    }
    
    
    @IBAction func forogotPasswordBtu(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ConfirmPasswordViewController")
        navigationController?.pushViewController(viewController, animated: true)
        print("forgot")
        
    }
    

}
