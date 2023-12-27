//
//  MainViewModel.swift
//  My Places
//
//  Created by    Sergey on 27.12.2023.
//

import Foundation
import Combine

final class MainViewModel: ObservableObject {
    
    @Published private var restaurants: [PlaceModel] = FakePlaceModelService().restaurants
    var places: [PlaceModel] = []
    private var cancelable: Set<AnyCancellable> = []
    
    init() {
        $restaurants
        .assign(to: \.places, on: self)
        .store(in: &cancelable)
    }
}
