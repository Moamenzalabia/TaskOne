//
//  OrderStatusTVCell.swift
//  TaskOne
//
//  Created by Moamen Abd ELgawad on 7/19/20.
//  Copyright © 2020 Ahmed Elgamal. All rights reserved.
//

import UIKit

class OrderStatusTVCell: UITableViewCell {
    
    //MARK:- Outlet's
    @IBOutlet weak var firstStatusImg: UIImageView!
    @IBOutlet weak var firstStatusTitleLbl: UILabel!
    @IBOutlet weak var secondStatusTitleLbl: UILabel!
    @IBOutlet weak var secondStatusImg: UIImageView!
    @IBOutlet weak var thirdStatusImg: UIImageView!
    @IBOutlet weak var thirdStatusTitleLbl: UILabel!
    
    //MARK:- Propertie's
    var timer = Timer()
    var counter = 0
    var statusArray: [String]? {
        didSet {
            self.firstStatusTitleLbl.text = statusArray?[0]
            self.secondStatusTitleLbl.text = statusArray?[1]
            self.thirdStatusTitleLbl.text = statusArray?[2]
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    //MARK:- Helper's
    func setupUI() {
        self.firstStatusTitleLbl.textColor = .lightGray
        self.secondStatusTitleLbl.textColor = .lightGray
        self.thirdStatusTitleLbl.textColor = .lightGray
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
    }
    
    //MARK:- Action's
    @objc func changeImage() {
        
        let timeCount = self.statusArray?.count ?? 0
        if counter < timeCount {
            if counter == 0 {
                self.firstStatusTitleLbl.textColor = .black
                self.firstStatusImg.image = UIImage(named: "5")
            }else if counter == 1 {
                self.secondStatusTitleLbl.textColor = .black
                self.secondStatusImg.image = UIImage(named: "5")
            } else if counter == 2 {
                self.thirdStatusTitleLbl.textColor = .black
                self.thirdStatusImg.image = UIImage(named: "5")
            }else {
                TrackOrderVC.shared.navigationController?.popViewController(animated: true)
            }
            counter += 1
        }
    }
    
}
