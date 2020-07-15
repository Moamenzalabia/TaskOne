//
//  UIViewController.swift
//  TaskOne
//
//  Created by Moamen Abd ELgawad on 7/15/20.
//  Copyright © 2020 Ahmed Elgamal. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func NavigationBarClear() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
    }
    
    func presentNavigationController(currentVC: UIViewController, storyboardName: String, navName: String){
        let storyBoard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        let vc = storyBoard.instantiateViewController(withIdentifier: navName) as? UINavigationController
        vc?.modalPresentationStyle = .fullScreen
        if let vc = vc {
            currentVC.present(vc, animated: true, completion: nil)
        }
    }
    
}
