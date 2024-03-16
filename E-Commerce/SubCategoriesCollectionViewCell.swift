//
//  SubCategoriesCollectionViewCell.swift
//  E-Commerce
//
//  Created by Abdelnasser on 16/03/2024.
//

import UIKit

class SubCategoriesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var subCategoriesNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        cardView.layer.cornerRadius = 8
        subCategoriesNameLabel.layer.cornerRadius = 8
    }
    
}
