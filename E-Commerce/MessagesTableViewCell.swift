//
//  MessagesTableViewCell.swift
//  E-Commerce
//
//  Created by Abdelnasser on 19/03/2024.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var imageMessages: UIImageView!
    @IBOutlet weak var messageTitelLabel: UILabel!
    @IBOutlet weak var messagesDiscribtionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageMessages.layer.cornerRadius = imageMessages.frame.height/2
    }
    
}
