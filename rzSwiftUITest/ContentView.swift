//
//  ContentView.swift
//  rzSwiftUITest
//
//  Created by rob zimmelman on 11/26/20.
//

import SwiftUI

struct ContentView: View {
    
    var tutors: [Tutor] = []
    
    var body: some View {
        NavigationView {
            List(tutors) { tutor in
                TutorCell(tutor: tutor)
            }.navigationBarTitle(Text("Tutors Yo!"))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}

struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        return NavigationLink(String(tutor.name), destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio))
            }
}
