//
//  Navigator.swift
//  Honk
//
//  Created by Ed West on 5/26/22.
//

import SwiftUI
import MapKit
import CoreLocation
import CoreLocationUI

struct Navigator: View {
    @StateObject var locationManager = LocationManager()
    @State var Region: MKCoordinateRegion  = .init()
    var body: some View {
        VStack        {
            Text("Pin Drop")
                //.padding()
                .font(Font.custom("Alte DIN 1451 Mittelschrift", size: 35))
                .foregroundColor(Color.black)
                //.frame(minWidth: nil, maxWidth: .infinity, minHeight: nil, maxHeight: .infinity, alignment: .top)
  
            Map(coordinateRegion: $Region, showsUserLocation: true, userTrackingMode: .constant(.follow))
            
            Button("Capture", action:{
                locationManager.requestLocation()
            })
            .padding()
            .background(Color.gray.edgesIgnoringSafeArea([]))
            .foregroundColor(Color.black)
            .font(Font.custom("Alte DIN 1451 Mittelschrift", size: 25))
            if let location = locationManager.location{
                Text(String(describing: location))
            }
        }
        .background(Color.green)
        .onAppear{
            let locationManager = CLLocationManager()
            locationManager.requestWhenInUseAuthorization()
    
        }
    }
}

struct Navigator_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Navigator()
        }
    }
}
