//
//  ContentView.swift
//  MyMobileApp
//
//  Created by Jaishankar Gothandaraman on 3/26/21.
//

import SwiftUI
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        
        
        VStack {
                    WelcomeText()
                    Image("tsusho")
                    TextField("Username", text: $username)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    SecureField("Password", text: $password)
                         .padding()
                         .background(lightGreyColor)
                         .cornerRadius(5.0)
                         .padding(.bottom, 20)
            Button(action: {
                            viewRouter.currentPage = .page2
                        }) {
            Text("LOGIN")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color.green)
                            .cornerRadius(15.0)
            }
                }
        .padding()
     
    }
}

struct WelcomeText: View {
    var body: some View {
        return Text("Purchase Order Approval").font(.subheadline)
            .fontWeight(.semibold)
            .padding()
    }
}

struct UserImage : View {
    var body: some View {
       return     Image("tsusho")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom, 75)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
