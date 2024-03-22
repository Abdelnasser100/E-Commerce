//
//  HomeViewController.swift
//  E-Commerce
//
//  Created by Abdelnasser on 15/03/2024.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let images :[UIImage] = [UIImage(named: "lunchScreen")!,UIImage(named: "category2")!,UIImage(named: "category1")!]
    let names:[String] = ["New Collections","Summer Sale","Man's Hoodies"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

         registerCollectionView()
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false  )

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false  )

    }
  
    func registerCollectionView(){
        collectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
    }
}


extension HomeViewController:CollectionView_Deleget_DataSourse_FlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath)as! CategoryCollectionViewCell
        cell.categoresImage.image = images[indexPath.row]
        cell.categoreNameLabel.text = names[indexPath.row]
        return cell
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        if indexPath.row == 0 {
            
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyBoard.instantiateViewController(withIdentifier: "NewCollectionViewController")
            navigationController?.pushViewController(viewController, animated: true)
            
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.frame.width
        let hight = (collectionView.frame.height/2) - 24
        
        switch indexPath.row{
        case 0:
            return CGSize(width: width, height: hight)
        default:
            return CGSize(width: width/2, height: hight)
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
