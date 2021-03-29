//
//  Order.swift
//  MyMobileApp
//
//  Created by Jaishankar Gothandaraman on 3/26/21.
//

import Foundation
import SwiftUI

class OrderDetail: Identifiable {
    let itemNumber:String
    let unitCost: String
    let extendCost: String
    let lineNumber: String
    let linety: String
    let qtyOrdered: Int
    let trUOM: String
    let branch: String
    let id: Int
    
    init(itemNumber:String,
     unitCost: String,
     extendCost: String,
     lineNumber: String,
     linety: String,
     qtyOrdered: Int,
     trUOM: String,
     branch: String,
     id: Int) {
        self.itemNumber=itemNumber
        self.unitCost=unitCost
        self.extendCost=extendCost
        self.lineNumber=lineNumber
        self.linety=linety
        self.qtyOrdered=qtyOrdered
        self.trUOM=trUOM
        self.branch=branch
        self.id=id
    }
}
