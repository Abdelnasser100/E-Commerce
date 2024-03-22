//
//  ChatListViewController.swift
//  E-Commerce
//
//  Created by Abdelnasser on 22/03/2024.
//

import UIKit

class ChatListViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        registerTableView()
    }
    
    
    func registerTableView(){
        tableView.register(UINib(nibName: "ChatListTableViewCell", bundle: nil), forCellReuseIdentifier: "ChatListTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}



extension ChatListViewController : TableView_Delegat_DataSourse_FlowLayout{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatListTableViewCell", for: indexPath)as! ChatListTableViewCell
        if indexPath.row % 2 == 0{
            cell.stackView.alignment = .leading
            cell.messageLabel.text = "Light blouse in soft cotton jersey with decorative buttons down the front and awide,"
        }else{
            cell.stackView.alignment = .trailing
            cell.messageLabel.text = "Light blouse in soft cotton jersey with decorative buttons down the front and awide,Light blouse in soft cotton jersey with decorative buttons down the front and awide,"
        }
        cell.selectionStyle = .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    
}
