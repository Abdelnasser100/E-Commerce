//
//  FavoriteViewController.swift
//  E-Commerce
//
//  Created by Abdelnasser on 15/03/2024.
//

import UIKit

class FavoriteViewController: UIViewController {

    @IBOutlet weak var SubCategoriesCollectionView: UICollectionView!
    @IBOutlet weak var ProductCollectionView: UICollectionView!
    @IBOutlet weak var gridListBtu: UIButton!
    @IBOutlet weak var sortByBtu: UIButton!
    
    
    let subCtegoriesName:[String] = ["T-chirt", "Crop-Tops", "Hoodies","dddddd"]
    var isList:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCollectionView()
        
    }
    

    func registerCollectionView(){
        
        SubCategoriesCollectionView.register(UINib(nibName: "SubCategoriesCollectionViewCell", bundle: nil),forCellWithReuseIdentifier: "SubCategoriesCollectionViewCell")
        SubCategoriesCollectionView.delegate = self
        SubCategoriesCollectionView.dataSource = self
                                             
        
        ProductCollectionView.register(UINib(nibName: "ListProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ListProductCollectionViewCell")
        ProductCollectionView.register(UINib(nibName: "GridProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GridProductCollectionViewCell")
        ProductCollectionView.delegate = self
        ProductCollectionView.dataSource = self
    }
   
    @IBAction func didTappedGrid_ListBtu(_ sender: UIButton) {
        isList.toggle()
        let imageGrid = UIImage(named: "grid")
        let imageList = UIImage(named: "list")
        let image = isList == true ? imageGrid : imageList
        gridListBtu.setImage(image, for: .normal)
        ProductCollectionView.reloadData()
    }
    
    
    @IBAction func didTappedSortByBtu(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "SortByViewController")
        viewController.modalPresentationStyle = .overFullScreen
        let transetion = CATransition()
        transetion.duration = 0.2
        transetion.type = .fade
        view.window?.layer.add(transetion, forKey: kCATransition)
        navigationController?.present(viewController, animated: false)
        
    }
    
    
    
}



extension FavoriteViewController: CollectionView_Deleget_DataSourse_FlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == SubCategoriesCollectionView{
            return subCtegoriesName.count
        }else if collectionView == ProductCollectionView{
            return 5
        }else{
            return 0
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView{
        case SubCategoriesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubCategoriesCollectionViewCell", for: indexPath)as! SubCategoriesCollectionViewCell
            cell.subCategoriesNameLabel.text = subCtegoriesName[indexPath.row]
            return cell
        default:
            if isList == true{
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListProductCollectionViewCell", for: indexPath)as! ListProductCollectionViewCell
                return cell
            }else{
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridProductCollectionViewCell", for: indexPath)as! GridProductCollectionViewCell
                return cell
            }
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


extension FavoriteViewController{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        switch collectionView{
        case SubCategoriesCollectionView:
            let width = collectionView.frame.width / 3
            let height = collectionView.frame.height - 8
            return CGSize(width: width, height: height)
            
        default:
            if isList == true{
                let width = collectionView.frame.width
                return CGSize(width: width, height: 130)
            }else{
                let width = collectionView.frame.width / 2
                return CGSize(width: width, height: 236)
            }
        }
     
    }
    
    
}

