//
//  ListProductCollectionViewCell.swift
//  E-Commerce
//
//  Created by Abdelnasser on 16/03/2024.
//

import UIKit

class ListProductCollectionViewCell: UICollectionViewCell {
    
    
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
