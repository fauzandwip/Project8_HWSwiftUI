//
//  ContentView.swift
//  Moonshot
//
//  Created by Fauzan Dwi Prasetyo on 09/06/23.
//

import SwiftUI

struct ContentView: View {
    let astrounauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        VStack {
            Text("\(astrounauts.count)")
            Text("\(missions[0].crew[0].name)")
            Text("\(missions[0].crew[0].role)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
