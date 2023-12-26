//
//  PlaceTextField.swift
//  My Places
//
//  Created by    Sergey on 26.12.2023.
//

import SwiftUI

struct PlaceTextField: View {
    
    @StateObject private var viewModel = TempViewModel()
    let type: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(type.capitalized)
            TextField("Place \(type)", text: $viewModel.tempName)
        }
        .padding(.horizontal)
    }
}

#Preview {
    PlaceTextField(type: "name")
}

fileprivate class TempViewModel: ObservableObject {
    @Published var tempName = ""
}
