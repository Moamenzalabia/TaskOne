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
    static var shared = TrackOrderVC()
    var myOrderData: OrderDataModel?
    var orderTitle = ""
    var orderLocation = ""
    static func instance(orderTitle: String, orderLocation: String)-> TrackOrderVC{
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "TrackOrderVC") as! TrackOrderVC
        vc.orderTitle = orderTitle
        vc.orderLocation = orderLocation
        return vc
    }
    
    //MARK:- LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        TrackOrderVC.shared = self
        NavigationBarClear()
        setupTV()
        fullOrderData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        DispatchQueue.main.async {
            self.animateTVHome(tableView: self.orderTV)
        }
    }
    
    //MARK:- Helper's
    func fullOrderData() {
        
        let orderStatusArray = ["Order has been submitted", "Order has been prepared", "Your order is on the way"]
        var orderSummary = [OrderSummaryModel]()
        orderSummary.append(OrderSummaryModel(summaryTitle: "Whopper Combo", summaryDiscrabtion: "Cheese, Cola Upsize", summarySize: "1x", summaryHeight: "24.0 SM"))
        orderSummary.append(OrderSummaryModel(summaryTitle: "Regular fries", summaryDiscrabtion: "Add Cheese", summarySize: "2x", summaryHeight: "16.0 SM"))
        
        self.myOrderData = OrderDataModel(orderTitle: self.orderTitle, orderDiscrabtion: "The Faster", orderStatus: orderStatusArray, orderSummary: orderSummary, orderTime: "7:30 Pm", orderLocation: self.orderLocation)
    }
    
    func setupTV() {
        orderTV.delegate = self
        orderTV.dataSource = self
        orderTV.registerCellNib(cellClass: HeaderOrderTVCell.self)
        orderTV.registerCellNib(cellClass: OrderStatusTVCell.self)
        orderTV.registerCellNib(cellClass: OrderSummaryTVCell.self)
    }
    
}
