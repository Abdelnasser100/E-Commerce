//
//  CardView.swift
//  E-Commerce
//
//  Created by Abdelnasser on 16/03/2024.
//

import UIKit

class CardView: UIView {

    @IBInspectable var cornerRedius :CGFloat = 8
    @IBInspectable var shadowOffsetWidth :CGFloat = 2
    @IBInspectable var shadowOffsetHeight :CGFloat = 3
    
    @IBInspectable var shadowOpacity :CGFloat = 0.5
    @IBInspectable var shadowColor :UIColor = .gray
    @IBInspectable var borderWidth :CGFloat = 0
    @IBInspectable var boarderColor :UIColor?
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRedius
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        layer.shadowOpacity = Float(shadowOpacity)
        layer.borderWidth = borderWidth
        layer.borderColor = boarderColor?.cgColor
        layer.shadowColor = shadowColor.cgColor
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRedius)
        layer.shadowPath = shadowPath.cgPath
    }



}
