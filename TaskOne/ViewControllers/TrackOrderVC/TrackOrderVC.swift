//
//  TrackOrderVC.swift
//  TaskOne
//
//  Created by Moamen Abd ELgawad on 7/15/20.
//  Copyright © 2020 Ahmed Elgamal. All rights reserved.
//

import UIKit

class TrackOrderVC: UIViewController {
    
    //MARK:- Outlet's
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var productImageCV: UICollectionView!
    @IBOutlet weak var orderStatusTextLbl: UILabel!
    
    //MARK:- Propertie's
    let statusImgaeArray = ["1", "2", "4", "3"]
    let statusTextArray = ["Your Order is under review", "Your Order Confirm With Phone Call", "Your Order under delivery", "Getting Your Order and Pay Cash"]
    var timer = Timer()
    var counter = 0
    static func instance()-> TrackOrderVC{
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "TrackOrderVC") as! TrackOrderVC
        return vc
    }
    
    //MARK:- LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        NavigationBarClear()
        setupCV()
    }
    
    //MARK:- Helper's
    func setupCV() {
        productImageCV.delegate = self
        productImageCV.dataSource = self
        productImageCV.registerCellNib(cellClass: OrderStatusCVCell.self)
        pageControl.numberOfPages = self.statusImgaeArray.count
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 60.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
    }
    
    //MARK:- Action's
    @objc func changeImage() {
        let imagesCount = self.statusImgaeArray.count
        if counter < imagesCount {
            self.pageControl.currentPage = counter
            let index = IndexPath.init(item: counter, section: 0)
            self.productImageCV.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            self.orderStatusTextLbl.text = self.statusTextArray[counter]
            counter += 1
            
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
}
