//
//  MyMobileAppApp.swift
//  MyMobileApp
//
//  Created by Jaishankar Gothandaraman on 3/26/21.
//

import SwiftUI

@main
struct MyMobileAppApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
           // ContentView()
            let orderList = OrderData
            MainView(orderList: orderList,viewRouter: viewRouter)
        }
    }
}
