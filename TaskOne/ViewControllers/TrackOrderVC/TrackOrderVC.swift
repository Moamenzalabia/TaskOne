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
//       @IBOutlet weak var passwordView: UIView!
//       @IBOutlet weak var passwordTxtField: UITextField!
//       @IBOutlet weak var eyeBtnOutlet: UIButton!
//       @IBOutlet weak var saveBtnOutlet: UIButton!
//       @IBOutlet weak var passwordPlaceHolderView: UIView!
//       @IBOutlet weak var passwordPlaceHolderLbl: UILabel!
//
       //MARK:- Propertie's
       static func instance()-> TrackOrderVC{
           let story = UIStoryboard(name: "Main", bundle: nil)
           let vc = story.instantiateViewController(withIdentifier: "TrackOrderVC") as! TrackOrderVC
           return vc
       }
       
       //MARK:- LifeCycle
       override func viewDidLoad() {
           super.viewDidLoad()
           NavigationBarClear()
           //setUpUi()
       }
       
       //MARK:- Helper's
//       func setUpUi(){
//           passwordView.addCornerRadius(6)
//           saveBtnOutlet.addCornerRadius(6)
//       }
       
       //MARK:- Action's

}
