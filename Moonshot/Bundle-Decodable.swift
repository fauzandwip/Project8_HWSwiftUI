//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Fauzan Dwi Prasetyo on 09/06/23.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        guard let loaded = try? JSONDecoder().decode([String: Astronaut].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
}
