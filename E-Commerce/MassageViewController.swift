//
//  MassageViewController.swift
//  E-Commerce
//
//  Created by Abdelnasser on 15/03/2024.
//

import UIKit

class MassageViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.topItem?.title = "Messages"
        registerTableView()
        
    }
    
    func registerTableView(){
        
        tableView.register(UINib(nibName: "MessagesTableViewCell", bundle: nil), forCellReuseIdentifier: "MessagesTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }

    
}




extension MassageViewController: TableView_Delegat_DataSourse_FlowLayout{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessagesTableViewCell", for: indexPath) as! MessagesTableViewCell
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
 
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ChatListViewController")
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}


