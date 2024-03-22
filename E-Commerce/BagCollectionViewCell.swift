//
//  BagCollectionViewCell.swift
//  E-Commerce
//
//  Created by Abdelnasser on 20/03/2024.
//

import UIKit

class BagCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        productImage.layer.cornerRadius = 8
    }
}
