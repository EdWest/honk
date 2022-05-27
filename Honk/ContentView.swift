//
//  ContentView.swift
//  Honk
//
//  Created by Ed West on 5/7/22.
//

import SwiftUI

struct ContentView: View {

    @StateObject var soundplayer:Soundplayer = Soundplayer()
    var body: some View
    
    {
        NavigationView{
        
            GeometryReader{reader in
                NavigationLink("Navigator") {
                   Navigator()
                }
                Button("Honk", action:soundplayer.playSound)
                    .frame(width: reader.size.width * 0.75)
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(Color.black) //Button text color is pea green now -- Ed 5/12/22
                    .position(x: reader.size.width / 2, y: reader.size.height / 2)
                    .font(Font.custom("Alte DIN 1451 Mittelschrift", size: 25))

                
                VStack(spacing:20) {
                    Text("This is Ed's Honk app")
                        .font(Font.custom("Alte DIN 1451 Mittelschrift", size: 35))
                        .foregroundColor(Color.black)
                        Text("Press the button below to hear a Honk")
                        .foregroundColor(Color.gray)
                        Text("When pressed, a honk will sound")
                        .foregroundColor(Color.gray)
                        
                }
                .font(Font.custom("Alte DIN 1451 Mittelschrift", size: 20))
                .position(x: reader.size.width / 2, y: reader.size.height / 3)
            }
            .background(Image("background").resizable())
            
    //
        }
        
     
//
//        @StateObject var soundplayer:Soundplayer = Soundplayer2()  // This was supposed to be a second button  -- Ed 5/12/22
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
    
