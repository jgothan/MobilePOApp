//
//  Order.swift
//  MyMobileApp
//
//  Created by Jaishankar Gothandaraman on 3/26/21.
//

import Foundation
import SwiftUI

class Order: Identifiable {
    let name:String
    let orderNumber: String
    let orderType: String
    let orderAmt: String
    let supplierName: String
    let dayOld: Int
    let id: Int
    
    init(name:String,
         orderNumber: String,
     orderType: String,
     orderAmt: String,
     supplierName: String,
     dayOld: Int,
     id: Int) {
        self.name=name
        self.orderNumber=orderNumber
        self.orderType=orderType
        self.orderAmt=orderAmt
        self.supplierName=supplierName
        self.dayOld=dayOld
        self.id=id
    }
}
