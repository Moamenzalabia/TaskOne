//
//  OrderSummaryDataTVCell.swift
//  TaskOne
//
//  Created by Moamen Abd ELgawad on 7/19/20.
//  Copyright © 2020 Ahmed Elgamal. All rights reserved.
//

import UIKit

class OrderSummaryDataTVCell: UITableViewCell {
    
    //MARK:- Outlet's
    @IBOutlet weak var summaryTitleLbl: UILabel!
    @IBOutlet weak var summarySizeLbl: UILabel!
    @IBOutlet weak var summaryHeightLbl: UILabel!
    @IBOutlet weak var summaryDiscLbl: UILabel!
    
    //MARK:- Propertie's
    var dataModel: OrderSummaryModel? {
        didSet {
            self.summaryTitleLbl.text = dataModel?.summaryTitle
            self.summaryDiscLbl.text = dataModel?.summaryDiscrabtion
            self.summarySizeLbl.text = dataModel?.summarySize
            self.summaryHeightLbl.text = dataModel?.summaryHeight
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }    
    
}
