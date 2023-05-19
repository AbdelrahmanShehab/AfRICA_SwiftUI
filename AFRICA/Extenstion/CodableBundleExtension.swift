//
//  CodableBundleExtension.swift
//  AFRICA
//
//  Created by Abdelrahman Shehab on 07/04/2023.
//

import Foundation

extension Bundle {
    func decode<T :Decodable >(_ file: String) -> T {
        
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Faild to locate \(file) in bundle.")
        }
        // 2. Create a property for th data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Falid to load \(file) from bundle.")
        }
        
        // 3. Create decoder
        let decoder = JSONDecoder()
        
        // 4. Create a preperty for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Faild to decode \(file) from bundle.")
        }
        // 5. Return the ready-to-use data
        return loaded
    }
}

