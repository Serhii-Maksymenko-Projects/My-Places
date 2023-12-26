//
//  PlaceModel.swift
//  My Places
//
//  Created by    Sergey on 26.12.2023.
//

import SwiftUI

struct PlaceModel: Identifiable {
    let id = UUID()
    let image: ImageResource
    let name: String
    let location: String
    let type: String
}
