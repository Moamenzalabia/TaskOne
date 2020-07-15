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
    
    //MARK:- Action's
    @IBAction func confirmBtnAction(_ sender: Any) {
        let vc = TrackOrderVC.instance()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

