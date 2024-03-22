//
//  ChatListTableViewCell.swift
//  E-Commerce
//
//  Created by Abdelnasser on 22/03/2024.
//

import UIKit

class ChatListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var stackView:UIStackView!
    @IBOutlet weak var messageLabel:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
