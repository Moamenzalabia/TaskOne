//
//  ViewController.swift
//  TaskOne
//
//  Created by Moamen Abd ELgawad on 7/14/20.
//  Copyright © 2020 Ahmed Elgamal. All rights reserved.
//

import UIKit

class OrderDataVC: UIViewController {
    
    //MARK:- Outlet's
    @IBOutlet weak var FullNameTxtField: UITextField!
    @IBOutlet weak var MobileNumberTxtField: UITextField!
    @IBOutlet weak var OrderLocationTxtField: UITextField!
    @IBOutlet weak var MealCountTxtField: UITextField!
    @IBOutlet weak var ConfirmBtnOutlet: UIButton!
    
    //MARK:- Propertie's
    static func instance()-> OrderDataVC{
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "OrderDataVC") as! OrderDataVC
        return vc
    }
    
    //MARK:- LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        NavigationBarClear()
        setUpUi()
    }
    
    //MARK:- Helper's
    func setUpUi(){
        FullNameTxtField.addCornerRadius(6)
        MobileNumberTxtField.addCornerRadius(6)
        OrderLocationTxtField.addCornerRadius(6)
        MealCountTxtField.addCornerRadius(6)
        ConfirmBtnOutlet.addCornerRadius(6)
    }
    
    // MARK:- Data Validations
    func isvalidData() -> Bool{
        
        if (FullNameTxtField.text!.isEmpty && MobileNumberTxtField.text!.isEmpty && OrderLocationTxtField.text!.isEmpty && MealCountTxtField.text!.isEmpty) {
            self.showAlertWiring(title: "Please enter your order data")
            return false
        }
        
        if FullNameTxtField.text!.isEmpty {
            self.showAlertWiring(title: "Please enter your FullName")
            return false
        }
        
        if FullNameTxtField.text!.count < 3{
            self.showAlertWiring(title: "Please enter correct FullName")
            return false
        }
        
        if MobileNumberTxtField.text!.isEmpty {
            self.showAlertWiring(title: "Please enter your MobileNumber")
            return false
        }
        
        if MobileNumberTxtField.text!.count < 11 {
            self.showAlertWiring(title: "Please enter correct MobileNumber")
            return false
        }
        
        if OrderLocationTxtField.text!.isEmpty{
            self.showAlertWiring(title: "Please enter order OrderLocation")
            return false
        }
        
        if MealCountTxtField.text!.isEmpty{
            self.showAlertWiring(title: "Please enter your Meal Count ")
            return false
        }
        
        return true
    }
    
    //MARK:- Action's
    @IBAction func confirmBtnAction(_ sender: Any) {
        if isvalidData() {
            self.showAlertsuccess(title: "Your Order Created Successfully")
            let vc = TrackOrderVC.instance(orderTitle: self.FullNameTxtField.text ?? "", orderLocation: self.OrderLocationTxtField.text ?? "")
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

