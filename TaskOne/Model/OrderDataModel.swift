//
//  OrderDataModel.swift
//  TaskOne
//
//  Created by Moamen Abd ELgawad on 7/19/20.
//  Copyright © 2020 Ahmed Elgamal. All rights reserved.
//

import Foundation

struct OrderDataModel {
    
    var orderTitle: String?
    var orderDiscrabtion: String?
    var orderStatus: [String]?
    var orderSummary: [OrderSummaryModel]?
    var orderTime: String?
    var orderLocation: String?
    
    init(orderTitle: String, orderDiscrabtion: String, orderStatus: [String], orderSummary: [OrderSummaryModel], orderTime: String, orderLocation: String) {
        self.orderTitle = orderTitle
        self.orderDiscrabtion = orderDiscrabtion
        self.orderStatus = orderStatus
        self.orderSummary = orderSummary
        self.orderTime = orderTime
        self.orderLocation = orderLocation
    }
    
}

struct OrderSummaryModel {
    
    var summaryTitle: String?
    var summaryDiscrabtion: String?
    var summarySize: String?
    var summaryHeight: String?
    
    init(summaryTitle: String, summaryDiscrabtion: String, summarySize: String, summaryHeight: String) {
        self.summaryTitle = summaryTitle
        self.summaryDiscrabtion = summaryDiscrabtion
        self.summarySize = summarySize
        self.summaryHeight = summaryHeight
    }
    
}
