//
//  FakePlaceModelService.swift
//  My Places
//
//  Created by    Sergey on 26.12.2023.
//

import Foundation

struct FakePlaceModelService {
    
    private let restaurantNames = ["Burger Heroes", "Kitchen", "Bonsai", "Дастархан", "Indigokitay",
                                   "X.O", "Балкан Гриль", "Sherlock Holmes", "Speak Easy", "Morris Pub",
                                   "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"]
    
    var restaurants: [PlaceModel] {
        get { generatePlaces() }
    }
    
    private func generatePlaces() -> [PlaceModel] {
        let result = restaurantNames.map { restaurantName in
            return PlaceModel(image: ImageResource(name: restaurantName, bundle: Bundle.main), name: restaurantName, location: "Moscow", type: "Restaurant")
        }
        return result
    }
    
}
