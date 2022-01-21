//
//  ContentView.swift
//  Phrase OTA Demo
//
//  Created by Patrick Hampel on 23.08.21.
//

import SwiftUI

extension Color {
    static let phraseBlue = Color("PhraseBlue")
}

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color.phraseBlue
                .ignoresSafeArea()
                   
            Text(NSLocalizedString("app.text", comment: "An example."))
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
           }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
