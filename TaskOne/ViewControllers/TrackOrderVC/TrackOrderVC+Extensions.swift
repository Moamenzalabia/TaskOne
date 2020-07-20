//
//  TrackOrderVC+Extensions.swift
//  TaskOne
//
//  Created by Moamen Abd ELgawad on 7/15/20.
//  Copyright © 2020 Ahmed Elgamal. All rights reserved.
//

import UIKit

extension TrackOrderVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeue() as HeaderOrderTVCell
            cell.dataModel = self.myOrderData
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeue() as OrderStatusTVCell
            cell.statusArray = self.myOrderData?.orderStatus
            return cell
        }else {
            let cell = tableView.dequeue() as OrderSummaryTVCell
            cell.orderSummaryArray = self.myOrderData?.orderSummary
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 2 {
            return (CGFloat((65 * 2) + 140))
        }else {
            return UITableView.automaticDimension
        }
    }
}
