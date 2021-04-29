//
//  ContentView.swift
//  HarshCard
//
//  Created by Harshvardhan Basava on 29/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.15, green: 0.68, blue: 0.38, opacity: 1.00).edgesIgnoringSafeArea(.all)
            VStack {
                Image("my_pic")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
                Text("Harshvardhan Basava")
                    .foregroundColor(.white)
                    .font(Font.custom("robotomono-italic", size: 30))
                    .bold()
                    .padding()
                Text("Flutter and iOS Developer")
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 25))
                Divider()
                ContactView(icon: "phone.fill", text: "+91-9182358769")
                ContactView(icon: "envelope.fill", text: "harshsolo.dev@gmail.com")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 12 Pro Max")
    }
}
