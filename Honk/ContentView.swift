//
//  ContentView.swift
//  Honk
//
//  Created by Ed West on 5/7/22.
//

import SwiftUI

struct ContentView: View {

    @StateObject var soundplayer:Soundplayer = Soundplayer()
    var body: some View {
        GeometryReader{reader in
            Button("Honk", action:soundplayer.playSound)
                .frame(width: reader.size.width * 0.75)
                .padding()
                .background(Color.black)
                .foregroundColor(Color.white)
                .position(x: reader.size.width / 2, y: reader.size.height / 2)
                
        }

    }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
