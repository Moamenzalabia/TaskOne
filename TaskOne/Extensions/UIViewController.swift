//
//  UIViewController.swift
//  TaskOne
//
//  Created by Moamen Abd ELgawad on 7/15/20.
//  Copyright © 2020 Ahmed Elgamal. All rights reserved.
//

import UIKit
import SwiftMessages
import ViewAnimator

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
    
    //MARK: Alerts
    func showAlertWiring(title: String, body: String = "") {
        let msgView = MessageView.viewFromNib(layout: .messageView)
        msgView.configureContent(title: title, body: body)
        msgView.configureTheme(.warning)
        msgView.button?.isHidden = true
        msgView.configureDropShadow()
        msgView.titleLabel?.textAlignment = .center
        msgView.bodyLabel?.textAlignment = .center
        
        msgView.titleLabel?.adjustsFontSizeToFitWidth = true
        msgView.bodyLabel?.adjustsFontSizeToFitWidth = true
        
        var config = SwiftMessages.defaultConfig
        
        config.presentationStyle = .top
        config.presentationContext = .window(windowLevel: UIWindow.Level.normal)
        config.duration = SwiftMessages.Duration.seconds(seconds: 3)
        
        SwiftMessages.show(config: config, view: msgView)
    }
    
    func showAlertError(title: String, body: String = "") {
        
        let msgView = MessageView.viewFromNib(layout: .messageView)
        
        msgView.configureContent(title: title, body: body)
        msgView.configureTheme(.error)
        msgView.button?.isHidden = true
        msgView.configureDropShadow()
        msgView.titleLabel?.textAlignment = .center
        msgView.bodyLabel?.textAlignment = .center
        
        msgView.titleLabel?.adjustsFontSizeToFitWidth = true
        msgView.bodyLabel?.adjustsFontSizeToFitWidth = true
        
        var config = SwiftMessages.defaultConfig
        
        config.presentationStyle = .top
        config.presentationContext = .window(windowLevel: UIWindow.Level.normal)
        config.duration = SwiftMessages.Duration.seconds(seconds: 3)
        
        SwiftMessages.show(config: config, view: msgView)
    }
    
    func showAlertsuccess(title: String, body: String = "") {
        
        let msgView = MessageView.viewFromNib(layout: .messageView)
        
        msgView.configureContent(title: title, body: body)
        msgView.configureTheme(.success)
        msgView.button?.isHidden = true
        msgView.configureDropShadow()
        msgView.titleLabel?.textAlignment = .center
        msgView.bodyLabel?.textAlignment = .center
        
        msgView.titleLabel?.adjustsFontSizeToFitWidth = true
        msgView.bodyLabel?.adjustsFontSizeToFitWidth = true
        
        var config = SwiftMessages.defaultConfig
        
        config.presentationStyle = .top
        config.presentationContext = .window(windowLevel: UIWindow.Level.normal)
        config.duration = SwiftMessages.Duration.seconds(seconds: 3)
        
        SwiftMessages.show(config: config, view: msgView)
    }
    
    func animateTVHome(tableView: UITableView) {
        let fromAnimation = AnimationType.from(direction: .right, offset: 30.0)
        let zoomAnimation = AnimationType.zoom(scale: 0.2)
        UIView.animate(views: tableView.visibleCells,
                       animations: [fromAnimation, zoomAnimation], delay: 0.2)
    }
    
    func animateTVList(tableView: UITableView) {
        let animations = [AnimationType.from(direction: .bottom, offset: 30.0)]
        UIView.animate(views: tableView.visibleCells, animations: animations, completion: {
        })
    }
}
