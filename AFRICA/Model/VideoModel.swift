//
//  VideoModel.swift
//  AFRICA
//
//  Created by Abdelrahman Shehab on 07/04/2023.
//

import Foundation

struct Video: Codable, Identifiable {
    
    var id: String
    var name: String
    var headline: String
    
    var thumbnail: String {
        return ("video-\(id)")
    }
}
