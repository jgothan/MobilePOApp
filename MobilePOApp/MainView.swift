//
//  MainView.swift
//  MyMobileApp
//
//  Created by Jaishankar Gothandaraman on 3/26/21.
//

import SwiftUI

struct MainView: View {
    var order = OrderData
    var orderList:[Order]
    
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        
        switch viewRouter.currentPage {
            case .page1:
                ContentView(viewRouter: viewRouter)
            case .page2:
                POListView(orderList:  order)
                //purchaseOrderList(viewRouter: viewRouter, orderList:  order)
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        
        let orderList = OrderData
        MainView(orderList: orderList,viewRouter: ViewRouter())
    }
}
