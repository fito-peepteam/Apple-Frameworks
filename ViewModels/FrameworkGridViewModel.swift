//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Fito Toledano on 12/6/20.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?
    @Published var isShowingDetailView: Bool = false {
        didSet {
            print(isShowingDetailView)
        }
    }
}
