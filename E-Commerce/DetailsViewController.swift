//
//  DetailsViewController.swift
//  E-Commerce
//
//  Created by Abdelnasser on 22/03/2024.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var ProductImageVollectionView: UICollectionView!
    @IBOutlet weak var LikeThisCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Lgiht blouse"
        registerCollectionView()
    }
    
    func registerCollectionView(){
        ProductImageVollectionView.register(UINib(nibName: "DetailImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DetailImageCollectionViewCell")
        ProductImageVollectionView.delegate = self
        ProductImageVollectionView.dataSource = self
        ProductImageVollectionView.reloadData()
        
        LikeThisCollectionView.register(UINib(nibName: "GridProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GridProductCollectionViewCell")
        LikeThisCollectionView.delegate = self
        LikeThisCollectionView.dataSource = self
        LikeThisCollectionView.reloadData()
    }
   

}



extension DetailsViewController: CollectionView_Deleget_DataSourse_FlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == ProductImageVollectionView{
            return 4
        }else if collectionView == LikeThisCollectionView{
            return 5
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView{
        case ProductImageVollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailImageCollectionViewCell", for: indexPath)as! DetailImageCollectionViewCell
            return cell
        default:
            
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridProductCollectionViewCell", for: indexPath)as! GridProductCollectionViewCell
                return cell
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



extension DetailsViewController{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        switch collectionView{
        case ProductImageVollectionView:
            let width = collectionView.frame.width
            let height = collectionView.frame.height - 8
            return CGSize(width: width / 1.5 , height: height)
            
        default:
                let width = collectionView.frame.width / 2
                return CGSize(width: width, height: 236)
        }
     
    }
    
    
}
