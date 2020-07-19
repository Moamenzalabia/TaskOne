//
//  OrderSummaryTVCell.swift
//  TaskOne
//
//  Created by Moamen Abd ELgawad on 7/19/20.
//  Copyright © 2020 Ahmed Elgamal. All rights reserved.
//

import UIKit

class OrderSummaryTVCell: UITableViewCell {
    
    //MARK:- Outlet's
    @IBOutlet weak var summaryTV: UITableView!
    @IBOutlet weak var containerView: UIView!
    
    //MARK:- Propertie's
    var orderSummaryArray: [OrderSummaryModel]? {
        didSet {
            self.summaryTV.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.containerView.addBorderWith(width: 1, color: .tertiarySystemGroupedBackground)
        self.containerView.addCornerRadius(8)
        setupTV()
    }
    
    //MARK:- Helper's
    func setupTV() {
        summaryTV.delegate = self
        summaryTV.dataSource = self
        summaryTV.registerCellNib(cellClass: OrderSummaryDataTVCell.self)
    }
    
}

//MARK:- TableView Delegate
extension OrderSummaryTVCell: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.orderSummaryArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as OrderSummaryDataTVCell
        cell.dataModel = self.orderSummaryArray?[indexPath.row]
        return cell
    }
    
    
}
