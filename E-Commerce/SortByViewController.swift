//
//  SortByViewController.swift
//  E-Commerce
//
//  Created by Abdelnasser on 18/03/2024.
//

import UIKit

class SortByViewController: UIViewController {

    @IBOutlet weak var viewSort: UIView!
    
    @IBOutlet var listView: [UIView]!
    @IBOutlet var listLabel: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewSort.layer.cornerRadius = 10
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 0.2) {
            self.view.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        }
    }
    

   
    @IBAction func didTappedCloseBtu(_ sender: UIButton) {
        dismiss(animated: false)
        
    }
    
    
    @IBAction func didTappedListBtu(_ sender: UIButton) {
        
        print("tag of btu",sender.tag)
        listView.forEach({ $0.backgroundColor = .white})
        listView.first(where: {$0.tag == sender.tag })?.backgroundColor = .red
        
        
        for customLabel in listLabel{
            if customLabel.tag == sender.tag{
                customLabel.textColor = .white
            }else{
                customLabel.textColor = .black
            }
        }
        
        
    }
    
    
}
