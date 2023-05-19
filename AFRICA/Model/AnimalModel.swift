//
//  AnimalModel.swift
//  AFRICA
//
//  Created by Abdelrahman Shehab on 07/04/2023.
//

import Foundation

struct Animal: Codable, Identifiable {
    
    var id: String
    var name: String
    var headline: String
    var description: String
    var link: String
    var image: String
    var gallery: [String]
    var fact: [String]
}
