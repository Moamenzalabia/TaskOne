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
    @IBOutlet weak var orderTV: UITableView!
    
    //MARK:- Propertie's
    var myOrderData: OrderDataModel?
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
        setupTV()
        fullOrderData()
    }
    
    //MARK:- Helper's
    func fullOrderData() {
        
        let orderStatusArray = ["Order has been submitted", "Order has been prepared", "Your order is on the way"]
        var orderSummary = [OrderSummaryModel]()
        orderSummary.append(OrderSummaryModel(summaryTitle: "Whopper Combo", summaryDiscrabtion: "Cheese, Cola Upsize", summarySize: "1x", summaryHeight: "24.0 SM"))
        orderSummary.append(OrderSummaryModel(summaryTitle: "Regular fries", summaryDiscrabtion: "Add Cheese", summarySize: "2x", summaryHeight: "16.0 SM"))
        
        self.myOrderData = OrderDataModel(orderTitle: "HungerStation", orderDiscrabtion: "The Faster", orderStatus: orderStatusArray, orderSummary: orderSummary, orderTime: "7:30 Pm", orderLocation: "Cairo, Egypt")
    }
    
    func setupTV() {
        orderTV.delegate = self
        orderTV.dataSource = self
        orderTV.registerCellNib(cellClass: HeaderOrderTVCell.self)
        orderTV.registerCellNib(cellClass: OrderStatusTVCell.self)
        orderTV.registerCellNib(cellClass: OrderSummaryTVCell.self)
        //        pageControl.numberOfPages = self.statusImgaeArray.count
        //        DispatchQueue.main.async {
        //            self.timer = Timer.scheduledTimer(timeInterval: 60.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        //        }
    }
    
    //MARK:- Action's
    //    @objc func changeImage() {
    //        let imagesCount = self.statusImgaeArray.count
    //        if counter < imagesCount {
    //            self.pageControl.currentPage = counter
    //            let index = IndexPath.init(item: counter, section: 0)
    //            self.productImageCV.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
    //            self.orderStatusTextLbl.text = self.statusTextArray[counter]
    //            counter += 1
    //
    //        } else {
    //            self.navigationController?.popViewController(animated: true)
    //        }
    //    }
    
    
}
