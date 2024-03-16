//
//  NewCollectionViewController.swift
//  E-Commerce
//
//  Created by Abdelnasser on 16/03/2024.
//

import UIKit

class NewCollectionViewController: UIViewController {
    
    
    @IBOutlet weak var SubCategoriesCollectionView: UICollectionView!
    @IBOutlet weak var ProductCollectionView: UICollectionView!
    @IBOutlet weak var gridListBtu: UIButton!
    
    
    let subCtegoriesName:[String] = ["T-chirt", "Crop-Tops", "Hoodies","dddddd"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCollectionView()
        
    }
    

    func registerCollectionView(){
        
        SubCategoriesCollectionView.register(UINib(nibName: "SubCategoriesCollectionViewCell", bundle: nil),forCellWithReuseIdentifier: "SubCategoriesCollectionViewCell")
        SubCategoriesCollectionView.delegate = self
        SubCategoriesCollectionView.dataSource = self
                                             
        
    }
   

}



extension NewCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return subCtegoriesName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubCategoriesCollectionViewCell", for: indexPath)as! SubCategoriesCollectionViewCell
        
        cell.subCategoriesNameLabel.text = subCtegoriesName[indexPath.row]
        return cell
    }
    
    
}


extension NewCollectionViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.width / 3
        let height = collectionView.frame.height - 8
        
        return CGSize(width: width, height: height)
    }
}
