//
//  InfoView.swift
//  HarshCard
//
//  Created by Harshvardhan Basava on 29/04/21.
//

import SwiftUI

struct ContactView: View {
    let icon: String
    let text: String
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 50, alignment: .center)
            .foregroundColor(.white)
            .padding()
            .overlay(HStack{
                Image(systemName: icon)
                    .foregroundColor(.green)
                Text(text)
                    .bold()
            })
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(icon: "phone.fill", text: "Hello")
            .previewLayout(.sizeThatFits)
    }
}
