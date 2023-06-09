//
//  Mission.swift
//  Moonshot
//
//  Created by Fauzan Dwi Prasetyo on 09/06/23.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        var name: String
        var role: String
    }
    
    var id: Int
    var crew: [CrewRole]
    var description: String
}
