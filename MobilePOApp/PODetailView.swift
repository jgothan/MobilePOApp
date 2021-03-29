//
//  PODetailView.swift
//  MyMobileApp
//
//  Created by Jaishankar Gothandaraman on 3/28/21.
//

import SwiftUI

struct PODetailView: View {
    
    @State private var showingSheet = false
    var orderdetails = [
        OrderDetail(itemNumber: "104",unitCost: "23",extendCost: "230",lineNumber: "1",linety: "S",qtyOrdered: 10,trUOM:"EA",branch:"30",id: 1),
        OrderDetail(itemNumber: "105",unitCost: "2000",extendCost: "25",lineNumber: "2",linety: "T",qtyOrdered: 1,trUOM:"EA",branch:"10",id: 2),
        OrderDetail(itemNumber: "106",unitCost: "1500",extendCost: "150",lineNumber: "3",linety: "U",qtyOrdered: 24,trUOM:"EA",branch:"20",id: 3),
        OrderDetail(itemNumber: "107",unitCost: "650",extendCost: "6500",lineNumber: "4",linety: "R",qtyOrdered: 15,trUOM:"EA",branch:"40",id: 4),
        OrderDetail(itemNumber: "108",unitCost: "105",extendCost: "400",lineNumber: "5",linety: "MM",qtyOrdered: 40,trUOM:"RA",branch:"50",id: 5),
        ]
    
 //   let filtered = orderdetails.filter{ $0.itemNumber.contains("104") }
 //   filtered.forEach { print($0) }
    var var1:String
        var body: some View {
        let   itemNum = var1
        let orderdetailLst =  orderdetails.filter({itemNum.contains($0.itemNumber)})
            VStack {
                POOrderDetailRow(orderDetail: orderdetailLst[0])
                
                HStack {
                   
                    Text("Approve")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 100, height: 40)
                        .background(Color.blue)
                                    .cornerRadius(15.0)
                    Button("Reject") {
                          showingSheet.toggle()
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 90, height: 40)
                    .background(Color.blue)
                    .cornerRadius(15.0)
                    .sheet(isPresented: $showingSheet) {
                            SheetView()
                        }
                }
                
            }
        }
}

struct PODetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        PODetailView( var1: "")
    }
}

struct POOrderDetailRow : View {
    let orderLabel = ["Branch Plant","Order Quantity/UOM","Item Number","Line Number","Unit Cost","Extended Cost"]

    var orderDetail: OrderDetail
    
    var body: some View {
        
                    VStack(alignment: .leading) {
                        Text(orderLabel[0])
                        Text(orderDetail.branch).font(.title)
                        Text(orderLabel[1])
                        Text(String(orderDetail.qtyOrdered)).font(.title)
                        Text(orderLabel[2])
                        Text(orderDetail.itemNumber).font(.title)
                    }
                    VStack(alignment: .leading) {
                        Text(orderLabel[3])
                        Text(orderDetail.lineNumber).font(.title)
                        Text(orderLabel[4])
                        Text(orderDetail.unitCost).font(.title)
                        Text(orderLabel[5])
                        Text(orderDetail.extendCost).font(.title)
                    }
                }
           
    }

struct SheetView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button("Press to dismiss") {
            presentationMode.wrappedValue.dismiss()
        }
        .font(.title)
        .padding()
        .background(Color.black)
    }
}

