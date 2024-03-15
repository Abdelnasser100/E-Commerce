//
//  ExUiView.swift
//  E-Commerce
//
//  Created by Abdelnasser on 14/03/2024.
//

import UIKit


extension UIView{
    
    func addLayers(){
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 2, height: 3)
        let shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 10)
        self.layer.shadowPath = shadowPath.cgPath
        self.layer.shadowOpacity = 0.5
    }
}
