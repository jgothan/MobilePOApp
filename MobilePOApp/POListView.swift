//
//  POListView.swift
//  MyMobileApp
//
//  Created by Jaishankar Gothandaraman on 3/28/21.
//

import SwiftUI

struct POListView: View {
   
    var orderList:[Order]
    var body: some View {
        NavigationView {
           
            List(OrderData) { order in
                NavigationLink(destination: PODetailView(var1: order.orderNumber))
                {
                    POListRow(order: order)
                }
              }
                .navigationBarTitle(Text("Purchase Orders"))
        }
    }
}

struct POListView_Previews: PreviewProvider {
    static var previews: some View {
        let orderList = OrderData
        POListView(orderList: orderList)
    }
}



struct POListRow : View {
    
    var order: Order
    
    var body: some View {
        
        HStack {
                    VStack(alignment: .leading) {
                        Text(order.name)
                        Text(order.orderNumber)
                        Text(order.supplierName).font(.subheadline).foregroundColor(.gray)
                    }
                    Spacer(minLength: 50)
                       
                    VStack(alignment: .leading) {
                    Text(String(format: "%d Days old", order.dayOld))
                    Text(order.orderType).font(.subheadline).foregroundColor(.gray)
                    }
                    Spacer(minLength: 20)
               
                }
            .padding()
    }
}
