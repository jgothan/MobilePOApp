//
//  MobilePOAppApp.swift
//  MobilePOApp
//
//  Created by Jaishankar Gothandaraman on 3/29/21.
//

import SwiftUI

@main
struct MobilePOAppApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            let orderList = OrderData
            MainView(orderList: orderList,viewRouter: viewRouter)

        }
    }
}
