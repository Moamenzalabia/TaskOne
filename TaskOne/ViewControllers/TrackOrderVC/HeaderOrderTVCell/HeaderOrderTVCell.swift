//
//  HeaderOrderTVCell.swift
//  TaskOne
//
//  Created by Moamen Abd ELgawad on 7/19/20.
//  Copyright © 2020 Ahmed Elgamal. All rights reserved.
//

import UIKit

class HeaderOrderTVCell: UITableViewCell {
    
    //MARK:- Outlet's
    @IBOutlet weak var brandView: UIView!
    @IBOutlet weak var orderTitle: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var orderTimeLbl: UILabel!
    @IBOutlet weak var orderDeliveryLbl: UILabel!
    
    //MARK:- Propertie's
    var dataModel: OrderDataModel? {
        didSet {
            self.orderTitle.text = dataModel?.orderTitle
            self.locationLbl.text = dataModel?.orderLocation
            self.orderTimeLbl.text = dataModel?.orderTime
            self.orderDeliveryLbl.text = dataModel?.orderDiscrabtion
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.brandView.addCornerRadius(6)
    }
    
    
}
