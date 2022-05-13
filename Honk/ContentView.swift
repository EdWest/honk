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
            Button("Honk1234", action:soundplayer.playSound)
                .frame(width: reader.size.width * 0.75)
                .padding()
                .background(Color.gray)
                .foregroundColor(Color.black) //Button text color is pea green now -- Ed 5/12/22
                .position(x: reader.size.width / 2, y: reader.size.height / 2)

            VStack(spacing:20) {
                Text("This is Ed's Honk app")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    Text("Press the button below to hear a Honk")
                    .foregroundColor(Color.gray)
                    //.font(Font.custom("din1451alt", size: 18))
                    Text("When pressed, a 12345 will sound")
                    .foregroundColor(Color.gray)
                    //.font(Font.custom("din1451alt", size: 18))
                    
            }
            .font(Font.custom("din1451alt", size: 18))
            .position(x: reader.size.width / 2, y: reader.size.height / 3)
        }
        .background(Image("background").resizable())
        

        

//
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
    
