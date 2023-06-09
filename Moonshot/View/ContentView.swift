//
//  ContentView.swift
//  Moonshot
//
//  Created by Fauzan Dwi Prasetyo on 09/06/23.
//

import SwiftUI

struct ContentView: View {
    let astrounauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        VStack {
            Text("\(astrounauts.count)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
