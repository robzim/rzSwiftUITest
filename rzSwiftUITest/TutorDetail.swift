//
//  TutorDetail.swift
//  rzSwiftUITest
//
//  Created by rob zimmelman on 11/26/20.
//

import SwiftUI

struct TutorDetail: View {
    var name: String
    var headline: String
    var bio: String
    var body: some View {
        VStack {
            Image(name)
                .resizable()
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.orange, lineWidth: 4))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text(headline)
                .font(.subheadline)
            Divider()
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(50)
        }.padding()
    }
}


struct TutorDetail_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetail(name: "Rob Z", headline: "Zinno Man", bio: "Founder of ZimApps. Author of several Apps on the App Store.  iOS and Python Developer.")
            }
}
