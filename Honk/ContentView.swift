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

            VStack {
                Text("This is Ed's Honk app")
                    .font(.largeTitle)

                VStack {
                    Text("     ")
                    Text("Press the button below to hear a Honk")
                    Text("     ")
                    Text("When pressed, a Honk will sound")
                }
            }
            .font(.system(size: 16, weight: .light, design: .default))
            .position(x: reader.size.width / 2, y: reader.size.height / 3)
        }
        
//            @StateObject var soundplayer:Soundplayer = Soundplayer2()
//            var body: some View {
//                 GeometryReader{reader in
//                  Button("door", action:soundplayer2.playSound)
//                        .frame(width: reader.size.width * 0.75)
//                        .padding()
//                        .background(Color.black)
//                        .foregroundColor(Color.white)
//                        .position(x: reader.size.width / 3, y: reader.size.height / 3)
 
        }

    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .padding(.all, 5.0)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
    
